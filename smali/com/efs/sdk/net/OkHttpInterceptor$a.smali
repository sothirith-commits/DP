.class final Lcom/efs/sdk/net/OkHttpInterceptor$a;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/net/OkHttpInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lokhttp3/ResponseBody;

.field private final b:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/efs/sdk/net/OkHttpInterceptor$a;->a:Lokhttp3/ResponseBody;

    sget-object p1, Lokio/Okio__JvmOkioKt;->logger:Ljava/util/logging/Logger;

    const-string p1, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lokio/InputStreamSource;

    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    invoke-direct {p1, p2, v0}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    new-instance p2, Lokio/RealBufferedSource;

    invoke-direct {p2, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object p2, p0, Lcom/efs/sdk/net/OkHttpInterceptor$a;->b:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget-object p0, p0, Lcom/efs/sdk/net/OkHttpInterceptor$a;->a:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/net/OkHttpInterceptor$a;->a:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/net/OkHttpInterceptor$a;->b:Lokio/BufferedSource;

    return-object p0
.end method
