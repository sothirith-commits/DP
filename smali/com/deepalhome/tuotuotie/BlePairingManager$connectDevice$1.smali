.class public final Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $device:Lcom/deepalhome/tuotuotie/BleDevice;

.field I$0:I

.field label:I

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleDevice;Lcom/deepalhome/tuotuotie/BlePairingManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;

    invoke-direct {p1, v0, p0, p2}, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;-><init>(Lcom/deepalhome/tuotuotie/BleDevice;Lcom/deepalhome/tuotuotie/BlePairingManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->I$0:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v1, v1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    monitor-enter p1

    :try_start_0
    const-string v4, "address"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lcom/deepalhome/tuotuotie/BleDeviceManager;->connections:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/tuotuotie/BleConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-nez v1, :cond_3

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v4, "BlePairingManager"

    iget-object v5, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v5, v5, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Connection object does not exist, creating new connection: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v1, v1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->connectDevice$tuotuotie_release(Ljava/lang/String;)V

    iput v3, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->label:I

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    move v1, p1

    :goto_1
    const/16 p1, 0x3c

    const/4 v4, 0x0

    if-ge v1, p1, :cond_10

    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    iget-object v5, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v5, v5, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->getConnectionState$tuotuotie_release(Ljava/lang/String;)Lcom/deepalhome/tuotuotie/BleConnectionState;

    move-result-object v5

    sget-object v6, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v7, "BlePairingManager"

    iget-object v8, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v8, v8, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Pairing poll: address="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", attempt="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", state="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_e

    if-eq v5, v2, :cond_d

    const/4 v7, 0x3

    if-eq v5, v7, :cond_d

    const/4 v7, 0x4

    if-eq v5, v7, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string v0, "BlePairingManager"

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v2, v1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Device authentication succeeded: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    sget v1, Lcom/deepalhome/tuotuotie/BlePairingManager;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    const-string v2, "Pairing succeeded: "

    const-string v3, " ("

    invoke-static {v2, v1, v3}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BlePairingManager"

    invoke-static {v6, v3, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->getDevice$tuotuotie_release(Ljava/lang/String;)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p0, p1

    :goto_2
    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceStorage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->devices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v3, v3, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_7
    move-object v1, v4

    :goto_3
    check-cast v1, Lcom/deepalhome/tuotuotie/BleDevice;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->sanitizeDevice(Lcom/deepalhome/tuotuotie/BleDevice;)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v4

    :cond_8
    if-nez v4, :cond_c

    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceStorage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->devices:Ljava/util/ArrayList;

    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v1, v1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_b
    :goto_4
    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->devices:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->sanitizeDevice(Lcom/deepalhome/tuotuotie/BleDevice;)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->saveDevices()V

    goto :goto_5

    :cond_c
    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceStorage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->updateDevice(Lcom/deepalhome/tuotuotie/BleDevice;)V

    :goto_5
    new-instance p1, Lcom/deepalhome/tuotuotie/BlePairingState$Success;

    invoke-direct {p1, p0}, Lcom/deepalhome/tuotuotie/BlePairingState$Success;-><init>(Lcom/deepalhome/tuotuotie/BleDevice;)V

    iget-object p0, v0, Lcom/deepalhome/tuotuotie/BlePairingManager;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_d
    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BlePairingManager;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v4, Lcom/deepalhome/tuotuotie/BlePairingState$Authenticating;

    iget-object v5, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    invoke-direct {v4, v5}, Lcom/deepalhome/tuotuotie/BlePairingState$Authenticating;-><init>(Lcom/deepalhome/tuotuotie/BleDevice;)V

    invoke-interface {p1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    const-string p1, "BlePairingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Device disconnected [attempt "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v4}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    iput v1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->I$0:I

    iput v2, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->label:I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_f

    return-object v0

    :cond_f
    :goto_7
    add-int/2addr v1, v3

    goto/16 :goto_1

    :cond_10
    sget-object p1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v0, "BlePairingManager"

    const-string v1, "Authentication timed out"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v4}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->this$0:Lcom/deepalhome/tuotuotie/BlePairingManager;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BlePairingManager$connectDevice$1;->$device:Lcom/deepalhome/tuotuotie/BleDevice;

    const-string v0, "Authentication timed out"

    sget v1, Lcom/deepalhome/tuotuotie/BlePairingManager;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    const-string v2, "Pairing failed: "

    const-string v3, " ("

    invoke-static {v2, v1, v3}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") - authentication timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlePairingManager"

    invoke-static {v2, v1, v4}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-virtual {v1, p0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->removeDevice$tuotuotie_release(Ljava/lang/String;)V

    new-instance p0, Lcom/deepalhome/tuotuotie/BlePairingState$Failed;

    invoke-direct {p0, v0}, Lcom/deepalhome/tuotuotie/BlePairingState$Failed;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BlePairingManager;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
