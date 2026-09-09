.class public final Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field label:I

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BleConnection;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleConnection;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    sget-wide v3, Lcom/deepalhome/tuotuotie/BleConnection;->CONNECT_TIMEOUT_MS:J

    iput v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BleConnection;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/deepalhome/tuotuotie/BleConnectionState;->CONNECTING:Lcom/deepalhome/tuotuotie/BleConnectionState;

    if-eq p1, v0, :cond_3

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-virtual {p1}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/deepalhome/tuotuotie/BleConnection;->CONNECT_TIMEOUT_MS:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection timeout: device="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timeoutMs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->logConnectionFailure(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->cleanupGatt(Z)V

    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    sget-object v0, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v1, "connect timeout"

    invoke-virtual {p1, v0, v1}, Lcom/deepalhome/tuotuotie/BleConnection;->updateState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$scheduleConnectTimeout$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-boolean p1, p0, Lcom/deepalhome/tuotuotie/BleConnection;->manualDisconnect:Z

    if-nez p1, :cond_4

    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->requestAutoReconnect$tuotuotie_release(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
