.class public final Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;
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

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput p3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->$status:I

    iput-object p4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    sget v2, Lcom/deepalhome/tuotuotie/BleConnection;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget v4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->$status:I

    invoke-static {v3, v4}, Lcom/deepalhome/tuotuotie/BleConnection;->access$gattStatusName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->$status:I

    iget-object v5, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/deepalhome/tuotuotie/BleConnection$toHexString$1;->INSTANCE:Lcom/deepalhome/tuotuotie/BleConnection$toHexString$1;

    const-string v7, " "

    invoke-static {v5, v7, v6}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Characteristic write callback: device="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), payload="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleConnection"

    invoke-static {v0, v2, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicWrite$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p0}, Lcom/deepalhome/tuotuotie/BleConnection;->runNextGattOperation(Landroid/bluetooth/BluetoothGatt;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
