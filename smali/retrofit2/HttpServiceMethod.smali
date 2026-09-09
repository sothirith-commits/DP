.class public abstract Lretrofit2/HttpServiceMethod;
.super Lretrofit2/ServiceMethod;
.source "SourceFile"


# instance fields
.field public final callFactory:Lokhttp3/Call$Factory;

.field public final requestFactory:Lretrofit2/RequestFactory;

.field public final responseConverter:Lretrofit2/Converter;


# direct methods
.method public constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/ServiceMethod;-><init>()V

    iput-object p1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    iput-object p2, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    iput-object p3, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    return-void
.end method


# virtual methods
.method public abstract adapt(Lretrofit2/OkHttpCall;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lretrofit2/OkHttpCall;

    iget-object v5, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    iget-object v1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    iget-object v4, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    invoke-virtual {p0, v6, p2}, Lretrofit2/HttpServiceMethod;->adapt(Lretrofit2/OkHttpCall;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
