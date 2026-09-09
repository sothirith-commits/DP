.class public final Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $authRequest:[B

.field final synthetic $gatt:Landroid/bluetooth/BluetoothGatt;

.field label:I

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BleConnection;


# direct methods
.method public constructor <init>(Lcom/deepalhome/tuotuotie/BleConnection;[BLandroid/bluetooth/BluetoothGatt;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->$authRequest:[B

    iput-object p3, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->$authRequest:[B

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;[BLandroid/bluetooth/BluetoothGatt;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->label:I

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

    iput v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->label:I

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    sget v1, Lcom/deepalhome/tuotuotie/BleConnection;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v2, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->$authRequest:[B

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/tuotuotie/BleConnection;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending authentication request: device="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", payload="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleConnection"

    invoke-static {p1, v1, v0}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v0, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1$1;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1;->$authRequest:[B

    invoke-direct {v1, p1, p0}, Lcom/deepalhome/tuotuotie/BleConnection$startAuthentication$1$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;[B)V

    invoke-virtual {p1, v0, v1}, Lcom/deepalhome/tuotuotie/BleConnection;->enqueueGattOperation(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
