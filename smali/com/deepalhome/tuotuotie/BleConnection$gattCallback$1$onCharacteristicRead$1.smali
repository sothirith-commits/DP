.class public final Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic $gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic $status:I

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BleConnection;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGattCharacteristic;ILandroid/bluetooth/BluetoothGatt;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput p3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->$status:I

    iput-object p4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    sget v2, Lcom/deepalhome/tuotuotie/BleConnection;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget v4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->$status:I

    invoke-static {v3, v4}, Lcom/deepalhome/tuotuotie/BleConnection;->access$gattStatusName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->$status:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Characteristic read callback: device="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleConnection"

    invoke-static {v0, v2, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "00002a19-0000-1000-8000-00805f9b34fb"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->$status:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v3, v3, Lcom/deepalhome/tuotuotie/BleConnection;->onBatteryLevelChanged:Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-virtual {v3}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Read battery level: device="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", battery="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicRead$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p0}, Lcom/deepalhome/tuotuotie/BleConnection;->runNextGattOperation(Landroid/bluetooth/BluetoothGatt;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
