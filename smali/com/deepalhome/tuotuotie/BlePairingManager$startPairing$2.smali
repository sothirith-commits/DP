.class public final Lcom/deepalhome/tuotuotie/BlePairingManager$startPairing$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $existingAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BlePairingManager;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$startPairing$2;->this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$startPairing$2;->$existingAddresses:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lcom/deepalhome/tuotuotie/BleDevice;

    const-string v0, "device"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    const-string v1, "DeepalTag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$startPairing$2;->this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;

    iget-object v0, v0, Lcom/deepalhome/tuotuotie/BlePairingManager;->foundDevice:Lcom/deepalhome/tuotuotie/BleDevice;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$startPairing$2;->$existingAddresses:Ljava/util/Set;

    iget-object v1, p1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v1, "BlePairingManager"

    iget-object v2, p1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found pending pairing device: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$startPairing$2;->this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;

    iput-object p1, v1, Lcom/deepalhome/tuotuotie/BlePairingManager;->foundDevice:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v2, v1, Lcom/deepalhome/tuotuotie/BlePairingManager;->scanTimeout:Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/deepalhome/tuotuotie/BlePairingManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    sget-object v1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->stopScan$tuotuotie_release()V

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$startPairing$2;->this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "BlePairingManager"

    iget-object v3, p1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Entering connection phase: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lcom/deepalhome/tuotuotie/BlePairingState$Connecting;

    invoke-direct {v2, p1}, Lcom/deepalhome/tuotuotie/BlePairingState$Connecting;-><init>(Lcom/deepalhome/tuotuotie/BleDevice;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->upsertDevice(Lcom/deepalhome/tuotuotie/BleDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->pairingJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_3
    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;

    invoke-direct {v6, p1, p0, v1}, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;-><init>(Lcom/deepalhome/tuotuotie/BleDevice;Lcom/deepalhome/tuotuotie/BlePairingManager;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->pairingJob:Lkotlinx/coroutines/Job;

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
