.class public final Lretrofit2/HttpServiceMethod$CallAdapted;
.super Lretrofit2/HttpServiceMethod;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final callAdapter:Lretrofit2/CallAdapter;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;I)V
    .locals 0

    iput p5, p0, Lretrofit2/HttpServiceMethod$CallAdapted;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3}, Lretrofit2/HttpServiceMethod;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    iput-object p4, p0, Lretrofit2/HttpServiceMethod$CallAdapted;->callAdapter:Lretrofit2/CallAdapter;

    return-void
.end method


# virtual methods
.method public final adapt(Lretrofit2/OkHttpCall;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lretrofit2/HttpServiceMethod$CallAdapted;->callAdapter:Lretrofit2/CallAdapter;

    iget p0, p0, Lretrofit2/HttpServiceMethod$CallAdapted;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {v0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Call;

    array-length p1, p2

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget-object p1, p2, p1

    check-cast p1, Lkotlin/coroutines/Continuation;

    :try_start_0
    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v0, Lretrofit2/KotlinExtensions$awaitResponse$2$1;

    invoke-direct {v0, p0}, Lretrofit2/KotlinExtensions$awaitResponse$2$1;-><init>(Lretrofit2/Call;)V

    invoke-interface {p2, v0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lretrofit2/KotlinExtensions$await$2$2;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lretrofit2/KotlinExtensions$await$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    invoke-interface {p0, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0, p1}, Lretrofit2/KotlinExtensions;->suspendAndThrow(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    :goto_0
    return-object p0

    :pswitch_0
    invoke-interface {v0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
