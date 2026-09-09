.class public final Lretrofit2/BuiltInFactories$Java8;
.super Lretrofit2/BuiltInFactories;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/BuiltInFactories;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDefaultCallAdapterFactories(Lretrofit2/AndroidMainExecutor;)Ljava/util/List;
    .locals 2

    new-instance p0, Lretrofit2/CompletableFutureCallAdapterFactory;

    invoke-direct {p0}, Lretrofit2/CompletableFutureCallAdapterFactory;-><init>()V

    new-instance v0, Lretrofit2/DefaultCallAdapterFactory;

    invoke-direct {v0, p1}, Lretrofit2/DefaultCallAdapterFactory;-><init>(Lretrofit2/AndroidMainExecutor;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lretrofit2/CallAdapter$Factory;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const/4 p0, 0x1

    aput-object v0, p1, p0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final createDefaultConverterFactories()Ljava/util/List;
    .locals 0

    new-instance p0, Lretrofit2/OptionalConverterFactory;

    invoke-direct {p0}, Lretrofit2/OptionalConverterFactory;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
