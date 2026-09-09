.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2"
    f = "Delay.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $timeout:J

.field label:I


# direct methods
.method public constructor <init>(JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;->$timeout:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;

    iget-wide v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;->$timeout:J

    invoke-direct {v0, v1, v2, p1}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;-><init>(JLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;->label:I

    if-nez v3, :cond_1f

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v3, Lkotlinx/coroutines/TimeoutCancellationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Timed out waiting for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$2;->$timeout:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1e

    sget-wide v9, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v9, v5, v9

    if-eqz v9, :cond_1d

    sget-wide v9, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v9, v5, v9

    if-eqz v9, :cond_1c

    if-gez v0, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v10, :cond_1

    const/16 v12, 0x2d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-gez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    shr-long v12, v5, v2

    neg-long v12, v12

    long-to-int v0, v5

    and-int/2addr v0, v2

    shl-long v5, v12, v2

    int-to-long v12, v0

    add-long/2addr v5, v12

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    :cond_3
    sget-object v0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v5, v6}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_4

    move/from16 p1, v10

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    sget-object v0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v14

    const/16 v0, 0x18

    move/from16 p1, v10

    int-to-long v9, v0

    rem-long/2addr v14, v9

    long-to-int v0, v14

    :goto_2
    invoke-static {v5, v6}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v9

    const/16 v10, 0x3c

    if-eqz v9, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    sget-object v9, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v9}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v14

    int-to-long v7, v10

    rem-long/2addr v14, v7

    long-to-int v7, v14

    :goto_3
    invoke-static {v5, v6}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v8}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v8

    int-to-long v14, v10

    rem-long/2addr v8, v14

    long-to-int v8, v8

    :goto_4
    invoke-static {v5, v6}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v9

    const v10, 0xf4240

    if-eqz v9, :cond_7

    const/4 v5, 0x0

    :goto_5
    const-wide/16 v14, 0x0

    goto :goto_7

    :cond_7
    long-to-int v9, v5

    and-int/2addr v9, v2

    if-ne v9, v2, :cond_8

    shr-long/2addr v5, v2

    int-to-long v14, v1

    rem-long/2addr v5, v14

    int-to-long v14, v10

    mul-long/2addr v5, v14

    :goto_6
    long-to-int v5, v5

    goto :goto_5

    :cond_8
    shr-long/2addr v5, v2

    const v9, 0x3b9aca00

    int-to-long v14, v9

    rem-long/2addr v5, v14

    goto :goto_6

    :goto_7
    cmp-long v6, v12, v14

    if-eqz v6, :cond_9

    move v6, v2

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_8
    if-eqz v0, :cond_a

    move v9, v2

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    :goto_9
    if-eqz v7, :cond_b

    move v14, v2

    goto :goto_a

    :cond_b
    const/4 v14, 0x0

    :goto_a
    if-nez v8, :cond_d

    if-eqz v5, :cond_c

    goto :goto_b

    :cond_c
    const/4 v15, 0x0

    goto :goto_c

    :cond_d
    :goto_b
    move v15, v2

    :goto_c
    if-eqz v6, :cond_e

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v2

    goto :goto_d

    :cond_e
    const/4 v12, 0x0

    :goto_d
    const/16 v13, 0x20

    if-nez v9, :cond_f

    if-eqz v6, :cond_11

    if-nez v14, :cond_f

    if-eqz v15, :cond_11

    :cond_f
    add-int/lit8 v16, v12, 0x1

    if-lez v12, :cond_10

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x68

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v12, v16

    :cond_11
    if-nez v14, :cond_12

    if-eqz v15, :cond_14

    if-nez v9, :cond_12

    if-eqz v6, :cond_14

    :cond_12
    add-int/lit8 v0, v12, 0x1

    if-lez v12, :cond_13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x6d

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v0

    :cond_14
    if-eqz v15, :cond_1a

    add-int/lit8 v0, v12, 0x1

    if-lez v12, :cond_15

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    if-nez v8, :cond_19

    if-nez v6, :cond_19

    if-nez v9, :cond_19

    if-eqz v14, :cond_16

    goto :goto_e

    :cond_16
    if-lt v5, v10, :cond_17

    div-int v1, v5, v10

    rem-int/2addr v5, v10

    const/4 v6, 0x6

    const-string v7, "ms"

    invoke-static {v11, v1, v5, v6, v7}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    goto :goto_f

    :cond_17
    if-lt v5, v1, :cond_18

    div-int/lit16 v6, v5, 0x3e8

    rem-int/2addr v5, v1

    const/4 v1, 0x3

    const-string v7, "us"

    invoke-static {v11, v6, v5, v1, v7}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    goto :goto_f

    :cond_18
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ns"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_19
    :goto_e
    const/16 v1, 0x9

    const-string v6, "s"

    invoke-static {v11, v8, v5, v1, v6}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    :goto_f
    move v12, v0

    :cond_1a
    if-eqz p1, :cond_1b

    if-le v12, v2, :cond_1b

    const/16 v0, 0x28

    invoke-virtual {v11, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :cond_1c
    const-string v0, "-Infinity"

    goto :goto_10

    :cond_1d
    const-string v0, "Infinity"

    goto :goto_10

    :cond_1e
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const-string v0, "0s"

    :goto_10
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
