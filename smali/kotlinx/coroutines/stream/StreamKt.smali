.class public final Lkotlinx/coroutines/stream/StreamKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final consumeAsFlow(Ljava/util/stream/Stream;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/stream/StreamFlow;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/stream/StreamFlow;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method
