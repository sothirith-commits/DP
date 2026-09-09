.class public final Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic $mtu:I

.field final synthetic $status:I

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BleConnection;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleConnection;IILandroid/bluetooth/BluetoothGatt;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iput p2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->$mtu:I

    iput p3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->$status:I

    iput-object p4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    sget v2, Lcom/deepalhome/tuotuotie/BleConnection;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->$mtu:I

    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget v4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->$status:I

    invoke-static {v3, v4}, Lcom/deepalhome/tuotuotie/BleConnection;->access$gattStatusName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->$status:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MTU callback: device="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mtu="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {v0, v2, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    sget-object v4, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "requestConnectionPriority"

    if-nez v3, :cond_0

    invoke-virtual {v0, v5}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectPermissionDenied(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v5, v1}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectSecurityException(Ljava/lang/String;Ljava/lang/SecurityException;)V

    :goto_0
    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Lcom/deepalhome/tuotuotie/BleConnection;->discoverServices(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onMtuChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Requesting high priority and discovering services: device="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", priorityAccepted="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", discoverAccepted="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
