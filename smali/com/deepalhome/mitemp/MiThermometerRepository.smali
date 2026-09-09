.class public final Lcom/deepalhome/mitemp/MiThermometerRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BATTERY_CHAR_UUID:Ljava/util/UUID;

.field public static final CCCD_UUID:Ljava/util/UUID;

.field public static final SERVICE_UUID:Ljava/util/UUID;

.field public static final TEMPERATURE_CHAR_UUID:Ljava/util/UUID;


# instance fields
.field public final _state:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public activeConnectionToken:J

.field public final appContext:Landroid/content/Context;

.field public bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field public final bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field public final gattCallback:Lcom/deepalhome/mitemp/MiThermometerGattCallback;

.field public final gattOperationQueue:Lcom/deepalhome/mitemp/GattOperationQueue;

.field public final gattTokens:Ljava/util/IdentityHashMap;

.field public nextConnectionToken:J

.field public scanCallback:Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

.field public final state:Lkotlinx/coroutines/flow/StateFlow;

.field public final timeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/mitemp/MiThermometerRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/mitemp/MiThermometerRepository$Companion;-><init>(I)V

    const-string v0, "ebe0ccb0-7a0a-4b0c-8a1a-6ff2997da3a6"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->SERVICE_UUID:Ljava/util/UUID;

    const-string v0, "ebe0ccc1-7a0a-4b0c-8a1a-6ff2997da3a6"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->TEMPERATURE_CHAR_UUID:Ljava/util/UUID;

    const-string v0, "ebe0ccc4-7a0a-4b0c-8a1a-6ff2997da3a6"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->BATTERY_CHAR_UUID:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->CCCD_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->appContext:Landroid/content/Context;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    new-instance p1, Lcom/deepalhome/mitemp/MiThermometerUiState;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/deepalhome/mitemp/MiThermometerUiState;-><init>(I)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->state:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p1, Lcom/deepalhome/mitemp/GattOperationQueue;

    invoke-direct {p1}, Lcom/deepalhome/mitemp/GattOperationQueue;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattOperationQueue:Lcom/deepalhome/mitemp/GattOperationQueue;

    new-instance p1, Lcom/deepalhome/mitemp/MiThermometerGattCallback;

    invoke-direct {p1, p0}, Lcom/deepalhome/mitemp/MiThermometerGattCallback;-><init>(Lcom/deepalhome/mitemp/MiThermometerRepository;)V

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattCallback:Lcom/deepalhome/mitemp/MiThermometerGattCallback;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattTokens:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->timeFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static final access$handleScanResult(Lcom/deepalhome/mitemp/MiThermometerRepository;Landroid/bluetooth/le/ScanResult;)V
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    const-string v2, "LYWSD03"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v1, Lcom/deepalhome/mitemp/MiScanDevice;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAddress(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p1

    invoke-direct {v1, v0, v2, p1}, Lcom/deepalhome/mitemp/MiScanDevice;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    iget-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-object v3, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->scanDevices:Ljava/util/List;

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

    check-cast v6, Lcom/deepalhome/mitemp/MiScanDevice;

    iget-object v6, v6, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    iget-object v7, v1, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/deepalhome/mitemp/MiThermometerRepository$handleScanResult$lambda$16$$inlined$sortedByDescending$1;

    invoke-direct {v4}, Lcom/deepalhome/mitemp/MiThermometerRepository$handleScanResult$lambda$16$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v11, 0xf7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v11}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Device found: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/deepalhome/mitemp/MiScanDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/deepalhome/mitemp/MiScanDevice;->rssi:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static final access$readBattery(Lcom/deepalhome/mitemp/MiThermometerRepository;Landroid/bluetooth/BluetoothGatt;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->BATTERY_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string p1, "Cannot read battery: characteristic not found"

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static final access$readTemperature(Lcom/deepalhome/mitemp/MiThermometerRepository;Landroid/bluetooth/BluetoothGatt;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->TEMPERATURE_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string p1, "Cannot read temperature/humidity: characteristic not found"

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    :goto_1
    return p0
.end method


# virtual methods
.method public final appendLog(Ljava/lang/String;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->timeFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-object v3, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->logs:Ljava/util/List;

    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x28

    if-lt v5, v4, :cond_1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v5, v4, -0x28

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v10, v6

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v11, 0x7f

    invoke-static/range {v2 .. v11}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final closeGatt(Z)V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattOperationQueue:Lcom/deepalhome/mitemp/GattOperationQueue;

    iget-object v0, v0, Lcom/deepalhome/mitemp/GattOperationQueue;->operations:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattTokens:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPermissionHelper;

    const-string v1, "appContext"

    iget-object v2, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->appContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Missing Bluetooth connect permission, cannot disconnect GATT"

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to disconnect GATT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->closeGattSafely(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public final closeGattSafely(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3

    sget-object v0, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPermissionHelper;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->appContext:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Missing Bluetooth connect permission, cannot close GATT"

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to close GATT: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final connect(Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "address"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPermissionHelper;

    iget-object v3, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->appContext:Landroid/content/Context;

    const-string v4, "appContext"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->hasRequiredPermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string v0, "Missing Bluetooth permissions, cannot connect"

    invoke-virtual {v1, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    return v4

    :cond_0
    iget-object v0, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    :try_start_0
    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_0
    instance-of v5, v0, Lkotlin/Result$Failure;

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    move-object v0, v7

    :cond_1
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_2

    const-string v0, "Unable to get device: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    return v4

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->stopScan()V

    invoke-virtual {v1, v6}, Lcom/deepalhome/mitemp/MiThermometerRepository;->closeGatt(Z)V

    iget-wide v8, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->nextConnectionToken:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->nextConnectionToken:J

    iput-wide v8, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->activeConnectionToken:J

    :cond_3
    iget-object v5, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/deepalhome/mitemp/MiThermometerUiState;

    sget-object v14, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTING:Lcom/deepalhome/mitemp/MiConnectionStatus;

    iget-object v12, v11, Lcom/deepalhome/mitemp/MiThermometerUiState;->scanDevices:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lcom/deepalhome/mitemp/MiScanDevice;

    iget-object v15, v15, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_1

    :cond_5
    move-object v13, v7

    :goto_1
    check-cast v13, Lcom/deepalhome/mitemp/MiScanDevice;

    const-string v21, "LYWSD03MMC"

    if-nez v13, :cond_7

    new-instance v12, Lcom/deepalhome/mitemp/MiScanDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    move-object/from16 v13, v21

    :cond_6
    invoke-direct {v12, v13, v2, v4}, Lcom/deepalhome/mitemp/MiScanDevice;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v16, v12

    goto :goto_2

    :cond_7
    move-object/from16 v16, v13

    :goto_2
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, 0xeb

    invoke-static/range {v11 .. v20}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Initiating connection: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    move-object/from16 v11, v21

    :cond_8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x28

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :try_start_1
    sget v2, Lkotlin/Result;->$r8$clinit:I

    iget-object v2, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattCallback:Lcom/deepalhome/mitemp/MiThermometerGattCallback;

    const/4 v10, 0x2

    invoke-virtual {v0, v3, v4, v2, v10}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_3
    instance-of v2, v0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    move-object v7, v0

    :goto_4
    check-cast v7, Landroid/bluetooth/BluetoothGatt;

    if-nez v7, :cond_b

    const-string v0, "Connection failed: connectGatt returned null"

    invoke-virtual {v1, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :cond_a
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/deepalhome/mitemp/MiThermometerUiState;

    sget-object v9, Lcom/deepalhome/mitemp/MiConnectionStatus;->IDLE:Lcom/deepalhome/mitemp/MiConnectionStatus;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0xe9

    invoke-static/range {v6 .. v15}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    :cond_b
    iput-object v7, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattTokens:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v7, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v6

    :cond_c
    const-string v0, "Bluetooth disabled, cannot connect"

    invoke-virtual {v1, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    return v4
.end method

.method public final disconnect()V
    .locals 12

    const-string v0, "Disconnecting manually"

    invoke-virtual {p0, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->closeGatt(Z)V

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/mitemp/MiThermometerUiState;

    sget-object v5, Lcom/deepalhome/mitemp/MiConnectionStatus;->IDLE:Lcom/deepalhome/mitemp/MiConnectionStatus;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0xe9

    invoke-static/range {v2 .. v11}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final handleBatteryPayload([B)V
    .locals 12

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-byte p1, p1, v0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-object v2, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/deepalhome/mitemp/MiReading;->batteryPercent:Ljava/lang/Integer;

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Battery service read: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%, ignored, using sensor voltage conversion"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/mitemp/MiThermometerUiState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v11, 0xbf

    invoke-static/range {v2 .. v11}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Battery read: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x25

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final handleTemperaturePayload(Ljava/lang/String;[B)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/deepalhome/mitemp/MiThermometerParser;->INSTANCE:Lcom/deepalhome/mitemp/MiThermometerParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p2 .. p2}, Lcom/deepalhome/mitemp/MiThermometerParser;->parseReading([B)Lcom/deepalhome/mitemp/MiReading;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_0
    instance-of v3, v0, Lkotlin/Result$Failure;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lcom/deepalhome/mitemp/MiReading;

    :goto_1
    iget-object v15, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v5, v14

    check-cast v5, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-object v13, v3, Lcom/deepalhome/mitemp/MiReading;->batteryPercent:Ljava/lang/Integer;

    if-nez v13, :cond_0

    iget-object v6, v5, Lcom/deepalhome/mitemp/MiThermometerUiState;->batteryPercent:Ljava/lang/Integer;

    move-object v12, v6

    goto :goto_2

    :cond_0
    move-object v12, v13

    :goto_2
    const/4 v10, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x9f

    move-object v11, v3

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    move-object v4, v14

    move/from16 v14, v17

    invoke-static/range {v5 .. v14}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v5

    invoke-interface {v15, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x25

    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " battery="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, ""

    :cond_2
    const-string v6, " temperature="

    invoke-static {v2, v6}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v8, v3, Lcom/deepalhome/mitemp/MiReading;->temperatureCelsius:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%.2f"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u00b0C humidity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/deepalhome/mitemp/MiReading;->humidityPercent:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_4
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, " parse failed: "

    invoke-static {v2, v3}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final isStaleGatt(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattTokens:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-wide v0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->activeConnectionToken:J

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final stopScan()V
    .locals 12

    iget-object v0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->scanCallback:Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPermissionHelper;

    iget-object v3, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->appContext:Landroid/content/Context;

    const-string v4, "appContext"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->hasRequiredPermissions(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iput-object v3, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->scanCallback:Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_3
    iput-object v3, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->scanCallback:Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

    const-string v0, "Stopped scanning"

    invoke-virtual {p0, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-object v3, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/deepalhome/mitemp/MiConnectionStatus;->IDLE:Lcom/deepalhome/mitemp/MiConnectionStatus;

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0xf9

    invoke-static/range {v2 .. v11}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void
.end method