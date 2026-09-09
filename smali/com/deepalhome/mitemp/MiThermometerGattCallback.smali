.class public final Lcom/deepalhome/mitemp/MiThermometerGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final repository:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/deepalhome/mitemp/MiThermometerRepository;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->$r8$classId:I

    const-string v0, "repository"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleConnection;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "characteristic"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-direct {v0, p2, p0, p1}, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGatt;)V

    const-string p1, "onCharacteristicChanged"

    invoke-static {p0, p1, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->access$runGattCallback(Lcom/deepalhome/tuotuotie/BleConnection;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_0
    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "characteristic"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/mitemp/MiThermometerRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->isStaleGatt(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    sget-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->TEMPERATURE_CHAR_UUID:Ljava/util/UUID;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "Notification"

    invoke-virtual {p0, p2, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->handleTemperaturePayload(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->BATTERY_CHAR_UUID:Ljava/util/UUID;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->handleBatteryPayload([B)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "characteristic"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGattCharacteristic;ILandroid/bluetooth/BluetoothGatt;)V

    const-string p1, "onCharacteristicRead"

    invoke-static {p0, p1, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->access$runGattCallback(Lcom/deepalhome/tuotuotie/BleConnection;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_0
    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "characteristic"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/mitemp/MiThermometerRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->isStaleGatt(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p3

    if-nez p3, :cond_1

    const/4 p3, 0x0

    new-array p3, p3, [B

    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    sget-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->TEMPERATURE_CHAR_UUID:Ljava/util/UUID;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "Read"

    invoke-virtual {p0, p2, p3}, Lcom/deepalhome/mitemp/MiThermometerRepository;->handleTemperaturePayload(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->BATTERY_CHAR_UUID:Ljava/util/UUID;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p3}, Lcom/deepalhome/mitemp/MiThermometerRepository;->handleBatteryPayload([B)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Characteristic read failed: uuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", status="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattOperationQueue:Lcom/deepalhome/mitemp/GattOperationQueue;

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/GattOperationQueue;->advance(Landroid/bluetooth/BluetoothGatt;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void

    :pswitch_0
    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "characteristic"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGattCharacteristic;ILandroid/bluetooth/BluetoothGatt;)V

    const-string p1, "onCharacteristicWrite"

    invoke-static {p0, p1, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->access$runGattCallback(Lcom/deepalhome/tuotuotie/BleConnection;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 10

    iget v0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;IILandroid/bluetooth/BluetoothGatt;)V

    const-string p1, "onConnectionStateChange"

    invoke-static {p0, p1, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->access$runGattCallback(Lcom/deepalhome/tuotuotie/BleConnection;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_0
    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/mitemp/MiThermometerRepository;

    if-eqz p3, :cond_3

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->isStaleGatt(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->closeGattSafely(Landroid/bluetooth/BluetoothGatt;)V

    goto/16 :goto_2

    :cond_1
    const-string p2, "GATT connected, starting service discovery"

    invoke-virtual {p0, p2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    sget-object p2, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPermissionHelper;

    iget-object p3, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->appContext:Landroid/content/Context;

    const-string v0, "appContext"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "Missing Bluetooth connect permission, cannot discover services"

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_7

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Service discovery failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :goto_0
    const-string p1, "Service discovery request submission failed"

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->isStaleGatt(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->closeGattSafely(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_2

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "GATT disconnected, status="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattOperationQueue:Lcom/deepalhome/mitemp/GattOperationQueue;

    iget-object p2, p2, Lcom/deepalhome/mitemp/GattOperationQueue;->operations:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p2}, Lkotlin/collections/ArrayDeque;->clear()V

    iget-object p2, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-ne p2, p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->closeGatt(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->closeGattSafely(Landroid/bluetooth/BluetoothGatt;)V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/deepalhome/mitemp/MiThermometerUiState;

    sget-object v3, Lcom/deepalhome/mitemp/MiConnectionStatus;->IDLE:Lcom/deepalhome/mitemp/MiConnectionStatus;

    const/4 v6, 0x0

    const/16 v9, 0xe9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "descriptor"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onDescriptorWrite$1;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onDescriptorWrite$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGattDescriptor;ILandroid/bluetooth/BluetoothGatt;)V

    const-string p1, "onDescriptorWrite"

    invoke-static {p0, p1, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->access$runGattCallback(Lcom/deepalhome/tuotuotie/BleConnection;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_0
    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "descriptor"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/mitemp/MiThermometerRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->isStaleGatt(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    const-string p2, "Notification enabled successfully"

    goto :goto_0

    :cond_1
    const-string p2, "Failed to enable notification: status="

    invoke-static {p2, p3}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattOperationQueue:Lcom/deepalhome/mitemp/GattOperationQueue;

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/GattOperationQueue;->advance(Landroid/bluetooth/BluetoothGatt;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    return-void

    :pswitch_0
    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;IILandroid/bluetooth/BluetoothGatt;)V

    const-string p1, "onMtuChanged"

    invoke-static {p0, p1, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->access$runGattCallback(Lcom/deepalhome/tuotuotie/BleConnection;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 11

    iget v0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onServicesDiscovered$1;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-direct {v0, p2, p0, p1}, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onServicesDiscovered$1;-><init>(ILcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGatt;)V

    const-string p1, "onServicesDiscovered"

    invoke-static {p0, p1, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->access$runGattCallback(Lcom/deepalhome/tuotuotie/BleConnection;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_0
    const-string v0, "gatt"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiThermometerGattCallback;->repository:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/mitemp/MiThermometerRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->isStaleGatt(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->closeGattSafely(Landroid/bluetooth/BluetoothGatt;)V

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Service discovery failed: status="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string p2, "Service discovery successful"

    invoke-virtual {p0, p2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/mitemp/MiThermometerUiState;

    sget-object v4, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    const/4 v7, 0x0

    const/16 v10, 0xfb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v10}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/deepalhome/mitemp/MiThermometerRepository;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->TEMPERATURE_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iget-object v8, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattOperationQueue:Lcom/deepalhome/mitemp/GattOperationQueue;

    if-nez p2, :cond_4

    const-string p2, "Temperature/humidity characteristic not found"

    invoke-virtual {p0, p2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    sget-object v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->CCCD_UUID:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-nez p2, :cond_5

    const-string p2, "CCCD descriptor not found"

    invoke-virtual {p0, p2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    new-instance v0, Lcom/deepalhome/mitemp/MiThermometerRepository$enableNotifications$1;

    invoke-direct {v0, p2}, Lcom/deepalhome/mitemp/MiThermometerRepository$enableNotifications$1;-><init>(Landroid/bluetooth/BluetoothGattDescriptor;)V

    invoke-virtual {v8, p1, v0}, Lcom/deepalhome/mitemp/GattOperationQueue;->enqueue(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V

    :goto_1
    new-instance p2, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-string v5, "readTemperature(Landroid/bluetooth/BluetoothGatt;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/deepalhome/mitemp/MiThermometerRepository;

    const-string v4, "readTemperature"

    const/16 v7, 0xe

    move-object v0, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v8, p1, p2}, Lcom/deepalhome/mitemp/GattOperationQueue;->enqueue(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-string v5, "readBattery(Landroid/bluetooth/BluetoothGatt;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/deepalhome/mitemp/MiThermometerRepository;

    const-string v4, "readBattery"

    const/16 v7, 0xf

    move-object v0, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v8, p1, p2}, Lcom/deepalhome/mitemp/GattOperationQueue;->enqueue(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method