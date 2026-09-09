.class public Lcom/efs/sdk/net/OkHttpInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/net/OkHttpInterceptor$a;,
        Lcom/efs/sdk/net/OkHttpInterceptor$c;,
        Lcom/efs/sdk/net/OkHttpInterceptor$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/efs/sdk/net/a/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/efs/sdk/net/a/a/g;->c()Lcom/efs/sdk/net/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/net/OkHttpInterceptor;->a:Lcom/efs/sdk/net/a/a/f;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8

    const-string v0, "NetTrace-Interceptor"

    const-string v1, "intercept request is "

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v2, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "begin intercept"

    invoke-static {v0, v5}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/efs/sdk/net/NetManager;->getNetConfigManager()Lcom/efs/sdk/net/NetConfigManager;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/efs/sdk/net/NetManager;->getNetConfigManager()Lcom/efs/sdk/net/NetConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/efs/sdk/net/NetConfigManager;->enableTracer()Z

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v3

    move v5, v4

    move-object v4, v1

    goto/16 :goto_3

    :cond_0
    :goto_0
    if-nez v4, :cond_2

    invoke-static {}, Lcom/efs/sdk/base/integrationtesting/IntegrationTestingUtil;->isIntegrationTestingInPeriod()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "net enable is false~"

    invoke-static {v0, v1}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object v1, v0

    goto :goto_4

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lokhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v1, "intercept request is null~"

    invoke-static {v0, v1}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/efs/sdk/net/OkHttpInterceptor;->a:Lcom/efs/sdk/net/a/a/f;

    invoke-interface {v1}, Lcom/efs/sdk/net/a/a/f;->b()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "intercept request id is "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/efs/sdk/net/a/a;->a()Lcom/efs/sdk/net/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/efs/sdk/net/a/a;->a(Ljava/lang/String;)Lcom/efs/sdk/net/a/b;

    move-result-object v0

    iget-object v5, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iget-object v5, v5, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    iput-object v5, v0, Lcom/efs/sdk/net/a/b;->c:Ljava/lang/String;

    new-instance v0, Lcom/efs/sdk/net/a/a/h;

    iget-object v5, p0, Lcom/efs/sdk/net/OkHttpInterceptor;->a:Lcom/efs/sdk/net/a/a/f;

    invoke-direct {v0, v5, v1}, Lcom/efs/sdk/net/a/a/h;-><init>(Lcom/efs/sdk/net/a/a/f;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v5, Lcom/efs/sdk/net/OkHttpInterceptor$b;

    invoke-direct {v5, v1, v2, v0}, Lcom/efs/sdk/net/OkHttpInterceptor$b;-><init>(Ljava/lang/String;Lokhttp3/Request;Lcom/efs/sdk/net/a/a/h;)V

    iget-object v6, p0, Lcom/efs/sdk/net/OkHttpInterceptor;->a:Lcom/efs/sdk/net/a/a/f;

    invoke-interface {v6, v5}, Lcom/efs/sdk/net/a/a/f;->a(Lcom/efs/sdk/net/a/a/f$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v7, v1

    move-object v1, v0

    move-object v0, v5

    move v5, v4

    move-object v4, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move v5, v4

    move-object v4, v1

    move-object v1, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    move-object v1, v4

    move v4, v5

    :goto_4
    invoke-virtual {p1, v2}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v5

    if-nez v4, :cond_4

    :try_start_3
    invoke-static {}, Lcom/efs/sdk/base/integrationtesting/IntegrationTestingUtil;->isIntegrationTestingInPeriod()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_8

    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/efs/sdk/net/a/a/h;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/efs/sdk/net/a/a/h;->b()V

    iget-object v4, v0, Lcom/efs/sdk/net/a/a/h;->a:Lcom/efs/sdk/net/a/a/f;

    iget-object v0, v0, Lcom/efs/sdk/net/a/a/h;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    invoke-interface {v4}, Lcom/efs/sdk/net/a/a/f;->a()V

    :cond_5
    iget-object p1, p1, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lokhttp3/internal/connection/Exchange;->connection:Lokhttp3/internal/connection/RealConnection;

    goto :goto_6

    :cond_6
    move-object p1, v3

    :goto_6
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/efs/sdk/net/OkHttpInterceptor;->a:Lcom/efs/sdk/net/a/a/f;

    new-instance v4, Lcom/efs/sdk/net/OkHttpInterceptor$c;

    invoke-direct {v4, v1, v2, v5, p1}, Lcom/efs/sdk/net/OkHttpInterceptor$c;-><init>(Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/Connection;)V

    invoke-interface {v0, v4}, Lcom/efs/sdk/net/a/a/f;->a(Lcom/efs/sdk/net/a/a/f$c;)V

    iget-object p1, v5, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_7

    :cond_7
    move-object v0, v3

    move-object v2, v0

    :goto_7
    iget-object v4, p0, Lcom/efs/sdk/net/OkHttpInterceptor;->a:Lcom/efs/sdk/net/a/a/f;

    if-eqz v0, :cond_8

    iget-object v3, v0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    :cond_8
    const-string v0, "Content-Encoding"

    invoke-static {v0, v5}, Lokhttp3/Response;->header$default(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/efs/sdk/net/a/a/c;

    iget-object p0, p0, Lcom/efs/sdk/net/OkHttpInterceptor;->a:Lcom/efs/sdk/net/a/a/f;

    invoke-direct {v6, p0, v1}, Lcom/efs/sdk/net/a/a/c;-><init>(Lcom/efs/sdk/net/a/a/f;Ljava/lang/String;)V

    invoke-interface {v4, v1, v3, v0, v2}, Lcom/efs/sdk/net/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {v5}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/efs/sdk/net/OkHttpInterceptor$a;

    invoke-direct {v1, p1, p0}, Lcom/efs/sdk/net/OkHttpInterceptor$a;-><init>(Lokhttp3/ResponseBody;Ljava/io/InputStream;)V

    iput-object v1, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v5

    goto :goto_9

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No connection associated with this request; did you use addInterceptor instead of addNetworkInterceptor?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_9
    return-object v5
.end method
