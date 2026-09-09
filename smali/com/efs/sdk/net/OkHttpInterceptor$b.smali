.class final Lcom/efs/sdk/net/OkHttpInterceptor$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/net/a/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/net/OkHttpInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lokhttp3/Request;

.field private c:Lcom/efs/sdk/net/a/a/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Request;Lcom/efs/sdk/net/a/a/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/efs/sdk/net/OkHttpInterceptor$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/efs/sdk/net/OkHttpInterceptor$b;->b:Lokhttp3/Request;

    iput-object p3, p0, Lcom/efs/sdk/net/OkHttpInterceptor$b;->c:Lcom/efs/sdk/net/a/a/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/net/OkHttpInterceptor$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/net/OkHttpInterceptor$b;->b:Lokhttp3/Request;

    iget-object p0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iget-object p0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/net/OkHttpInterceptor$b;->b:Lokhttp3/Request;

    iget-object p0, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    return-object p0
.end method

.method public final d()[B
    .locals 5

    iget-object v0, p0, Lcom/efs/sdk/net/OkHttpInterceptor$b;->b:Lokhttp3/Request;

    iget-object v1, v0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/efs/sdk/net/OkHttpInterceptor$b;->c:Lcom/efs/sdk/net/a/a/h;

    iget-object v0, v0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    const-string v3, "Content-Encoding"

    invoke-virtual {v0, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v4, "gzip"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/efs/sdk/net/a/a/e;->a(Ljava/io/OutputStream;)Lcom/efs/sdk/net/a/a/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v4, "deflate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/zip/InflaterOutputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    new-instance v4, Lcom/efs/sdk/net/a/a/a;

    invoke-direct {v4, v0}, Lcom/efs/sdk/net/a/a/a;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, v2, Lcom/efs/sdk/net/a/a/h;->c:Lcom/efs/sdk/net/a/a/a;

    iput-object v3, v2, Lcom/efs/sdk/net/a/a/h;->b:Ljava/io/ByteArrayOutputStream;

    sget-object v0, Lokio/Okio__JvmOkioKt;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lokio/OutputStreamSink;

    new-instance v2, Lokio/Timeout;

    invoke-direct {v2}, Lokio/Timeout;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v4, v2}, Lokio/OutputStreamSink;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lokio/RealBufferedSink;

    invoke-direct {v2, v0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    :try_start_0
    invoke-virtual {v1, v2}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->close()V

    iget-object p0, p0, Lcom/efs/sdk/net/OkHttpInterceptor$b;->c:Lcom/efs/sdk/net/a/a/h;

    invoke-virtual {p0}, Lcom/efs/sdk/net/a/a/h;->b()V

    iget-object p0, p0, Lcom/efs/sdk/net/a/a/h;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Lokio/RealBufferedSink;->close()V

    throw p0
.end method
