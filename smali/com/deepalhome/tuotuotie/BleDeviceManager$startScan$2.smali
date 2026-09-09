.class public final Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $callback:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;->$callback:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatchScanResults(Ljava/util/List;)V
    .locals 4

    iget v0, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "results"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;->$callback:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/mitemp/MiThermometerRepository;

    invoke-static {v1, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->access$handleScanResult(Lcom/deepalhome/mitemp/MiThermometerRepository;Landroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "results"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received batch scan results: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleDeviceManager"

    invoke-static {v0, v2, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    sget-object v1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;->$callback:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v0, v2}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->access$dispatchScanResult(Lcom/deepalhome/tuotuotie/BleDeviceManager;Landroid/bluetooth/le/ScanResult;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onScanFailed(I)V
    .locals 11

    iget v0, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Scan failed: errorCode="

    invoke-static {v0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;->$callback:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/mitemp/MiThermometerRepository;

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/mitemp/MiThermometerRepository;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-object v2, v1, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/deepalhome/mitemp/MiConnectionStatus;->IDLE:Lcom/deepalhome/mitemp/MiConnectionStatus;

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0xf9

    invoke-static/range {v1 .. v10}, Lcom/deepalhome/mitemp/MiThermometerUiState;->copy$default(Lcom/deepalhome/mitemp/MiThermometerUiState;ZZLcom/deepalhome/mitemp/MiConnectionStatus;Ljava/util/List;Lcom/deepalhome/mitemp/MiScanDevice;Lcom/deepalhome/mitemp/MiReading;Ljava/lang/Integer;Ljava/util/List;I)Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scan failed: errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    const-string v0, "BleDeviceManager"

    invoke-static {v0, p1, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 0

    iget p1, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "result"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;->$callback:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/mitemp/MiThermometerRepository;

    invoke-static {p0, p2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->access$handleScanResult(Lcom/deepalhome/mitemp/MiThermometerRepository;Landroid/bluetooth/le/ScanResult;)V

    return-void

    :pswitch_0
    const-string p1, "result"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;->$callback:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2, p0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->access$dispatchScanResult(Lcom/deepalhome/tuotuotie/BleDeviceManager;Landroid/bluetooth/le/ScanResult;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method