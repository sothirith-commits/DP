.class public final Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field label:I

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/BlePairingActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/BlePairingActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;->this$0:Lcom/deepalhome/launcher/settings/BlePairingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;->this$0:Lcom/deepalhome/launcher/settings/BlePairingActivity;

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;-><init>(Lcom/deepalhome/launcher/settings/BlePairingActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;->label:I

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

    sget-object p1, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/tuotuotie/Tuotuotie;->pairingManager$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/tuotuotie/BlePairingManager;

    iget-object p1, p1, Lcom/deepalhome/tuotuotie/BlePairingManager;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/mitemp/MiTemp;->pairingFlow:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v10, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$1;

    sget-object v5, Lcom/deepalhome/launcher/settings/BlePairingPresentationResolver;->INSTANCE:Lcom/deepalhome/launcher/settings/BlePairingPresentationResolver;

    const/4 v4, 0x3

    const-string v8, "resolve(Lcom/deepalhome/tuotuotie/BlePairingState;Lcom/deepalhome/mitemp/MiTempPairingState;)Lcom/deepalhome/launcher/settings/BlePairingPresentation;"

    const-class v6, Lcom/deepalhome/launcher/settings/BlePairingPresentationResolver;

    const-string v7, "resolve"

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, v1, v10}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1$2;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;->this$0:Lcom/deepalhome/launcher/settings/BlePairingActivity;

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1$2;-><init>(Lcom/deepalhome/launcher/settings/BlePairingActivity;)V

    iput v2, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
