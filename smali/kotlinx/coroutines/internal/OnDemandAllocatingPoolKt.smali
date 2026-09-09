.class public final Lkotlinx/coroutines/internal/OnDemandAllocatingPoolKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IS_CLOSED_MASK:I = -0x80000000


# direct methods
.method private static final loop(Lkotlin/jvm/functions/Function0;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    :goto_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0
.end method
