.class public final Lcom/deepalhome/launcher/http/RetryInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final maxRetry:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/http/RetryInterceptor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/http/RetryInterceptor;->maxRetry:I

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6

    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    iget p0, p0, Lcom/deepalhome/launcher/http/RetryInterceptor;->maxRetry:I

    const/4 v1, 0x0

    if-ltz p0, :cond_3

    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    move-object v4, p1

    check-cast v4, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v4, v0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return-object v1

    :goto_2
    if-eq v3, p0, :cond_2

    add-int/lit8 v4, v3, 0x1

    mul-int/lit16 v4, v4, 0x1f4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    if-eq v3, p0, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    throw v2

    :cond_3
    move-object v2, v1

    :cond_4
    if-nez v1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/Exception;

    const-string p0, "Request failed"

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_3
    throw v2

    :cond_6
    return-object v1
.end method
