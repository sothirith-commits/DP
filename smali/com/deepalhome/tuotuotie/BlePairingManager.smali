.class public final Lcom/deepalhome/tuotuotie/BlePairingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _state:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public foundDevice:Lcom/deepalhome/tuotuotie/BleDevice;

.field public final handler:Landroid/os/Handler;

.field public pairingJob:Lkotlinx/coroutines/Job;

.field public scanTimeout:Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final state:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/tuotuotie/BlePairingManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/tuotuotie/BlePairingManager$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/deepalhome/tuotuotie/BlePairingState$Idle;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePairingState$Idle;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->handler:Landroid/os/Handler;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final stopPairing(Z)V
    .locals 5

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cleaning pairing flow: resetState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlePairingManager"

    invoke-static {v0, v2, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->pairingJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->pairingJob:Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->scanTimeout:Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->scanTimeout:Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->stopScan$tuotuotie_release()V

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/tuotuotie/BlePairingState;

    iget-object v4, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->foundDevice:Lcom/deepalhome/tuotuotie/BleDevice;

    if-eqz v4, :cond_2

    instance-of v3, v3, Lcom/deepalhome/tuotuotie/BlePairingState$Success;

    if-nez v3, :cond_2

    iget-object v3, v4, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->removeDevice$tuotuotie_release(Ljava/lang/String;)V

    :cond_2
    iput-object v1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager;->foundDevice:Lcom/deepalhome/tuotuotie/BleDevice;

    if-eqz p1, :cond_3

    sget-object p0, Lcom/deepalhome/tuotuotie/BlePairingState$Idle;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePairingState$Idle;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
