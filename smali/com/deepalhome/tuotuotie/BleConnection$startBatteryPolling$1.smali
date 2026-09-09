.class public final Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $gatt:Landroid/bluetooth/BluetoothGatt;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BleConnection;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGatt;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v0, v1, p0, p2}, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGatt;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-wide v3, Lcom/deepalhome/tuotuotie/BleConnection;->BATTERY_INTERVAL_MS:J

    iput-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BleConnection;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v3, Lcom/deepalhome/tuotuotie/BleConnectionState;->AUTHENTICATED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v3, p0, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    new-instance v4, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1$1;

    invoke-direct {v4, p1}, Lcom/deepalhome/tuotuotie/BleConnection$startBatteryPolling$1$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;)V

    invoke-virtual {p1, v3, v4}, Lcom/deepalhome/tuotuotie/BleConnection;->enqueueGattOperation(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
