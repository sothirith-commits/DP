.class public final Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $preferredAddress:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->$preferredAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;

    iget-object v0, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->$preferredAddress:Ljava/lang/String;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x7d0

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iput v6, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->label:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p1, Lcom/deepalhome/mitemp/MiTemp;->pairingTargetAddress:Ljava/lang/String;

    if-eqz p1, :cond_4

    iput v5, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->label:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_4
    sget-object p1, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    iget-object v1, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->$preferredAddress:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/deepalhome/mitemp/MiTemp;->access$nextReconnectCandidate(Lcom/deepalhome/mitemp/MiTemp;Ljava/lang/String;)Lcom/deepalhome/mitemp/MiTempDevice;

    move-result-object p1

    if-nez p1, :cond_5

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v7, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    return-object p0

    :cond_5
    :try_start_2
    iget-object p1, p1, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    sget-object v1, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPermissionHelper;

    iget-object v6, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->$context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/deepalhome/mitemp/MiTempPermissionHelper;->hasRequiredPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    iput v4, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->label:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_6
    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v1

    iget-object v1, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->state:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-object v6, v1, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_a

    iget-object v6, v6, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    :try_start_3
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, v1, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-eqz v10, :cond_7

    :try_start_4
    sget-object v10, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-ne v1, v10, :cond_7

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sput-object v7, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    return-object p0

    :cond_7
    :try_start_5
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTING:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-ne v1, v6, :cond_8

    iput v3, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->label:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_8
    sget-object v6, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-eq v1, v6, :cond_9

    sget-object v6, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTING:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-ne v1, v6, :cond_a

    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sput-object v7, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    return-object p0

    :cond_a
    :try_start_6
    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->connect(Ljava/lang/String;)Z

    iput v2, p0, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;->label:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne p1, v0, :cond_3

    return-object v0

    :goto_1
    sput-object v7, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    throw p0
.end method
