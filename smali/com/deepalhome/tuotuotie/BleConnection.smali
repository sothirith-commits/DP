.class public final Lcom/deepalhome/tuotuotie/BleConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final BATTERY_INTERVAL_MS:J

.field public static final CONNECT_TIMEOUT_MS:J


# instance fields
.field public final _state:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public batteryJob:Lkotlinx/coroutines/Job;

.field public connectTimeoutJob:Lkotlinx/coroutines/Job;

.field public final deviceAddress:Ljava/lang/String;

.field public final deviceName:Ljava/lang/String;

.field public gatt:Landroid/bluetooth/BluetoothGatt;

.field public final gattCallback:Lcom/deepalhome/mitemp/MiThermometerGattCallback;

.field public final gattQueue:Lkotlin/collections/ArrayDeque;

.field public hostSalt:[B

.field public lastConnectTrace:Ljava/lang/Throwable;

.field public manualDisconnect:Z

.field public final onBatteryLevelChanged:Lkotlin/jvm/functions/Function1;

.field public final onEvent:Lkotlin/jvm/functions/Function1;

.field public final onStateChanged:Lkotlin/jvm/functions/Function1;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final state:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/tuotuotie/BleConnection$Companion;-><init>(I)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/deepalhome/tuotuotie/BleConnection;->BATTERY_INTERVAL_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/deepalhome/tuotuotie/BleConnection;->CONNECT_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$1;Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$2;Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$3;)V
    .locals 1

    const-string v0, "deviceAddress"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "deviceName"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "onEvent"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->deviceAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BleConnection;->deviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/tuotuotie/BleConnection;->onStateChanged:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/deepalhome/tuotuotie/BleConnection;->onBatteryLevelChanged:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/deepalhome/tuotuotie/BleConnection;->onEvent:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p2, p3, p2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->scope:Lkotlinx/coroutines/CoroutineScope;

    sget-object p1, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->gattQueue:Lkotlin/collections/ArrayDeque;

    new-instance p1, Lcom/deepalhome/mitemp/MiThermometerGattCallback;

    invoke-direct {p1, p0}, Lcom/deepalhome/mitemp/MiThermometerGattCallback;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;)V

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->gattCallback:Lcom/deepalhome/mitemp/MiThermometerGattCallback;

    return-void
.end method

.method public static final access$gattStatusName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_6

    const/16 p0, 0x8

    if-eq p1, p0, :cond_5

    const/16 p0, 0x13

    if-eq p1, p0, :cond_4

    const/16 p0, 0x16

    if-eq p1, p0, :cond_3

    const/16 p0, 0x3e

    if-eq p1, p0, :cond_2

    const/16 p0, 0x85

    if-eq p1, p0, :cond_1

    const/16 p0, 0x101

    if-eq p1, p0, :cond_0

    const-string p0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p0, "GATT_FAILURE"

    goto :goto_0

    :cond_1
    const-string p0, "GATT_ERROR"

    goto :goto_0

    :cond_2
    const-string p0, "GATT_CONN_FAIL_ESTABLISH"

    goto :goto_0

    :cond_3
    const-string p0, "GATT_CONN_TERMINATE_LOCAL_HOST"

    goto :goto_0

    :cond_4
    const-string p0, "GATT_CONN_TERMINATE_PEER_USER"

    goto :goto_0

    :cond_5
    const-string p0, "GATT_CONN_TIMEOUT"

    goto :goto_0

    :cond_6
    const-string p0, "GATT_SUCCESS"

    :goto_0
    return-object p0
.end method

.method public static final access$profileStateName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "STATE_UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p0, "STATE_DISCONNECTING"

    goto :goto_0

    :cond_1
    const-string p0, "STATE_CONNECTED"

    goto :goto_0

    :cond_2
    const-string p0, "STATE_CONNECTING"

    goto :goto_0

    :cond_3
    const-string p0, "STATE_DISCONNECTED"

    :goto_0
    return-object p0
.end method

.method public static final access$readBattery(Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGatt;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "0000180f-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "BleConnection"

    if-nez v0, :cond_0

    sget-object p1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Battery service unavailable: device="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const-string v3, "00002a19-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Battery characteristic unavailable: device="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    sget-object v3, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "readCharacteristic"

    if-nez v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectPermissionDenied(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/tuotuotie/BleConnection;->runNextGattOperation(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v4, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectSecurityException(Ljava/lang/String;Ljava/lang/SecurityException;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/tuotuotie/BleConnection;->runNextGattOperation(Landroid/bluetooth/BluetoothGatt;)V

    :goto_0
    sget-object p1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initiating battery read: device="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", accepted="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static final access$runGattCallback(Lcom/deepalhome/tuotuotie/BleConnection;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BLE callback exception: callback="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", device="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "BleConnection"

    invoke-static {p1, p0, p2}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/deepalhome/tuotuotie/BleConnection$toHexString$1;->INSTANCE:Lcom/deepalhome/tuotuotie/BleConnection$toHexString$1;

    const-string v1, " "

    invoke-static {p0, v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cancelConnectTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->connectTimeoutJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->connectTimeoutJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final cleanupGatt(Z)V
    .locals 7

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cleaning GATT: device="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", disconnectFirst="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleConnection"

    invoke-static {v1, v3, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    sget-object p1, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    sget-object v1, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result p1

    const-string v1, "disconnect"

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectPermissionDenied(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of v2, p1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/lang/SecurityException;

    invoke-virtual {p0, v1, p1}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectSecurityException(Ljava/lang/String;Ljava/lang/SecurityException;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to disconnect GATT: device="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2, p1}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->closeGatt(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public final closeGatt(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4

    sget-object v0, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    sget-object v1, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "close"

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectPermissionDenied(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/SecurityException;

    invoke-virtual {p0, v1, p1}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectSecurityException(Ljava/lang/String;Ljava/lang/SecurityException;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to close GATT: device="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", error="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "BleConnection"

    invoke-static {v0, p0, p1}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final connect()V
    .locals 13

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    const/4 v3, 0x0

    const-string v4, "BleConnection"

    const-string v5, ", device="

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Skipping connect: current state="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p0, v3}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_0
    sget-object v1, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    sget-object v6, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v1

    const-string v6, ", autoConnect=false"

    if-nez v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    goto :goto_0

    :cond_1
    const-string v0, "manifest bluetooth permissions"

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot initiate GATT connection: missing permission "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectionFailure(Ljava/lang/String;)V

    const-string v0, "missing bluetooth connect permission"

    invoke-virtual {p0, v2, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->updateState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "BLE connection initiation stack: device="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", autoConnect=false, state="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->lastConnectTrace:Ljava/lang/Throwable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->manualDisconnect:Z

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Initiating GATT connection: device="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->cleanupGatt(Z)V

    sget-object v1, Lcom/deepalhome/tuotuotie/BleConnectionState;->CONNECTING:Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v2, "connectInternal(autoConnect=false)"

    invoke-virtual {p0, v1, v2}, Lcom/deepalhome/tuotuotie/BleConnection;->updateState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->cancelConnectTimeout()V

    new-instance v10, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;

    invoke-direct {v10, p0, v3}, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/deepalhome/tuotuotie/BleConnection;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->connectTimeoutJob:Lkotlinx/coroutines/Job;

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleConnection;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_1
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_3

    move-object v1, v3

    :cond_3
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get Bluetooth device: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectionFailure(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->cancelConnectTimeout()V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v1, "getRemoteDevice failed"

    invoke-virtual {p0, v0, v1}, Lcom/deepalhome/tuotuotie/BleConnection;->updateState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v2, "Using TRANSPORT_LE to connect: device="

    sget-object v5, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    sget-object v7, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v5

    const-string v7, "connectGatt"

    if-nez v5, :cond_5

    invoke-virtual {p0, v7}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectPermissionDenied(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :try_start_1
    sget-object v5, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/deepalhome/tuotuotie/BleConnection;->gattCallback:Lcom/deepalhome/mitemp/MiThermometerGattCallback;

    const/4 v8, 0x2

    invoke-virtual {v1, v2, v0, v5, v8}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0, v7, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectSecurityException(Ljava/lang/String;Ljava/lang/SecurityException;)V

    :goto_2
    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectGatt returned null: device="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectionFailure(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->cancelConnectTimeout()V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v1, "connectGatt returned null"

    invoke-virtual {p0, v0, v1}, Lcom/deepalhome/tuotuotie/BleConnection;->updateState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iput-object v3, p0, Lcom/deepalhome/tuotuotie/BleConnection;->gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connectGatt initiated: device="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", gatt="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v4, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final deviceLabel()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final disconnect()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->manualDisconnect:Z

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleConnection;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Manually disconnecting: device="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleConnection"

    invoke-static {v1, v3, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->cancelConnectTimeout()V

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->batteryJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/deepalhome/tuotuotie/BleConnection;->batteryJob:Lkotlinx/coroutines/Job;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->gattQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->clear()V

    invoke-virtual {p0, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->cleanupGatt(Z)V

    sget-object v1, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v3, "disconnect()"

    invoke-virtual {p0, v1, v3}, Lcom/deepalhome/tuotuotie/BleConnection;->updateState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v0, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final discoverServices(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 3

    sget-object v0, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    sget-object v1, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "discoverServices"

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectPermissionDenied(Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, v2, p1}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectSecurityException(Ljava/lang/String;Ljava/lang/SecurityException;)V

    :goto_0
    return v1
.end method

.method public final enqueueGattOperation(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->gattQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    iget v2, v0, Lkotlin/collections/ArrayDeque;->size:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GATT queue enqueue: device="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", size="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "message"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "BleConnection"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3, v1, p0, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget p0, v0, Lkotlin/collections/ArrayDeque;->size:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final logConnectPermissionDenied(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    sget-object v1, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    goto :goto_0

    :cond_0
    const-string v1, "manifest bluetooth permissions"

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Skipping BLE connection operation: op="

    const-string v3, ", missing="

    const-string v4, ", device="

    invoke-static {v2, p1, v3, v1, v4}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    const-string v0, "BleConnection"

    invoke-static {v0, p0, p1}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final logConnectSecurityException(Ljava/lang/String;Ljava/lang/SecurityException;)V
    .locals 3

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BLE connection operation triggered SecurityException: op="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", device="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "BleConnection"

    invoke-static {p1, p0, p2}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final logConnectionFailure(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->lastConnectTrace:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "BleConnection"

    invoke-static {v0, p1, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final runNextGattOperation(Landroid/bluetooth/BluetoothGatt;)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->gattQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    iget v2, v0, Lkotlin/collections/ArrayDeque;->size:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GATT queue dequeue: device="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", remaining="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "message"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "BleConnection"

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lcom/deepalhome/tuotuotie/BleLogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v0, v0, Lkotlin/collections/ArrayDeque;->head:I

    aget-object v3, p0, v0

    :goto_0
    check-cast v3, Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final startBatteryPolling(Landroid/bluetooth/BluetoothGatt;)V
    .locals 10

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->batteryJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Starting battery polling: device="

    const-string v4, ", intervalMs="

    invoke-static {v3, v2, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/deepalhome/tuotuotie/BleConnection;->BATTERY_INTERVAL_MS:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleConnection"

    invoke-static {v0, v3, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;

    invoke-direct {v7, p0, p1, v1}, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGatt;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/deepalhome/tuotuotie/BleConnection;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->batteryJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final updateState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "BleConnection"

    const-string v3, ", reason="

    if-eq v1, p1, :cond_0

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "State changed: device="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "State unchanged: device="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", state="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->onStateChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final writeCharacteristic(Landroid/bluetooth/BluetoothGatt;[B)V
    .locals 5

    const-string v0, "0000ffd0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "BleConnection"

    if-nez v0, :cond_0

    sget-object p1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Write characteristic failed: service 0000ffd0-0000-1000-8000-00805f9b34fb not found, device="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v3, "0000ffd1-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Write characteristic failed: write characteristic 0000ffd1-0000-1000-8000-00805f9b34fb not found, device="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    sget-object v1, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    sget-object v3, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "writeCharacteristic"

    if-nez v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectPermissionDenied(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/tuotuotie/BleConnection;->runNextGattOperation(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v4, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectSecurityException(Ljava/lang/String;Ljava/lang/SecurityException;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/tuotuotie/BleConnection;->runNextGattOperation(Landroid/bluetooth/BluetoothGatt;)V

    :goto_0
    sget-object p1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/deepalhome/tuotuotie/BleConnection;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing characteristic: device="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", accepted="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", payload="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method