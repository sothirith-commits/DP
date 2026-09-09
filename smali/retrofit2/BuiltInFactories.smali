.class public Lretrofit2/BuiltInFactories;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDefaultCallAdapterFactories(Lretrofit2/AndroidMainExecutor;)Ljava/util/List;
    .locals 0

    new-instance p0, Lretrofit2/DefaultCallAdapterFactory;

    invoke-direct {p0, p1}, Lretrofit2/DefaultCallAdapterFactory;-><init>(Lretrofit2/AndroidMainExecutor;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public createDefaultConverterFactories()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
