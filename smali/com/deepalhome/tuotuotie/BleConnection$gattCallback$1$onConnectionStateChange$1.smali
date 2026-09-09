.class public final Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic $newState:I

.field final synthetic $status:I

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BleConnection;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleConnection;IILandroid/bluetooth/BluetoothGatt;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iput p2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    iput p3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$newState:I

    iput-object p4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v0, v0, Lcom/deepalhome/tuotuotie/BleConnection;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/tuotuotie/BleConnectionState;

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-virtual {v2}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget v4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    invoke-static {v3, v4}, Lcom/deepalhome/tuotuotie/BleConnection;->access$gattStatusName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    iget-object v5, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget v6, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$newState:I

    invoke-static {v5, v6}, Lcom/deepalhome/tuotuotie/BleConnection;->access$profileStateName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$newState:I

    const-string v7, "Connection state callback: device="

    const-string v8, ", status="

    const-string v9, "("

    invoke-static {v7, v2, v8, v3, v9}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), newState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BleConnection"

    invoke-static {v1, v4, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$newState:I

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-static {v0, v2}, Lcom/deepalhome/tuotuotie/BleConnection;->access$profileStateName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$newState:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring unhandled connection state: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v4, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-virtual {v0}, Lcom/deepalhome/tuotuotie/BleConnection;->cancelConnectTimeout()V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    sget-object v1, Lcom/deepalhome/tuotuotie/BleConnectionState;->CONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    iget v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "gatt connected, status="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/deepalhome/tuotuotie/BleConnection;->updateState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    sget-object v3, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "requestMtu"

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectPermissionDenied(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v3, v1}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectSecurityException(Ljava/lang/String;Ljava/lang/SecurityException;)V

    :goto_0
    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting MTU=64: device="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", accepted="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v4, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-virtual {v2}, Lcom/deepalhome/tuotuotie/BleConnection;->cancelConnectTimeout()V

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-virtual {v2}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget v7, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    invoke-static {v6, v7}, Lcom/deepalhome/tuotuotie/BleConnection;->access$gattStatusName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    const-string v10, "Device disconnected: device="

    invoke-static {v10, v2, v8, v6, v9}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), previousState="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v4, v2, v6}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-boolean v7, v2, Lcom/deepalhome/tuotuotie/BleConnection;->manualDisconnect:Z

    if-nez v7, :cond_4

    sget-object v7, Lcom/deepalhome/tuotuotie/BleConnectionState;->CONNECTING:Lcom/deepalhome/tuotuotie/BleConnectionState;

    if-eq v0, v7, :cond_3

    iget v7, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    if-eqz v7, :cond_4

    :cond_3
    invoke-virtual {v2}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget v11, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    invoke-static {v10, v11}, Lcom/deepalhome/tuotuotie/BleConnection;->access$gattStatusName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Connection failed or abnormal disconnect: device="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", previousState="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectionFailure(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    sget-object v2, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    iget v7, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "gatt disconnected, status="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lcom/deepalhome/tuotuotie/BleConnection;->updateState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v0, v0, Lcom/deepalhome/tuotuotie/BleConnection;->batteryJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    invoke-static {v0, v6, v2, v6}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iput-object v6, v0, Lcom/deepalhome/tuotuotie/BleConnection;->batteryJob:Lkotlinx/coroutines/Job;

    iget-object v0, v0, Lcom/deepalhome/tuotuotie/BleConnection;->gattQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v2, v0, Lcom/deepalhome/tuotuotie/BleConnection;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v6, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    if-ne v2, v6, :cond_6

    invoke-virtual {v0, v5}, Lcom/deepalhome/tuotuotie/BleConnection;->cleanupGatt(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v6}, Lcom/deepalhome/tuotuotie/BleConnection;->closeGatt(Landroid/bluetooth/BluetoothGatt;)V

    :goto_1
    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-boolean v2, v0, Lcom/deepalhome/tuotuotie/BleConnection;->manualDisconnect:Z

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget v5, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    invoke-static {v2, v5}, Lcom/deepalhome/tuotuotie/BleConnection;->access$gattStatusName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    const-string v6, "Delegating to manager for auto-reconnect loop: device="

    invoke-static {v6, v0, v8, v2, v9}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v2, v1, Lcom/deepalhome/tuotuotie/BleConnection;->deviceAddress:Ljava/lang/String;

    iget v4, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    invoke-static {v1, v4}, Lcom/deepalhome/tuotuotie/BleConnection;->access$gattStatusName(Lcom/deepalhome/tuotuotie/BleConnection;I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onConnectionStateChange$1;->$status:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->requestAutoReconnect$tuotuotie_release(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "This disconnection is manual, skipping auto-reconnect: device="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v4, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method