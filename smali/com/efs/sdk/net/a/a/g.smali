.class public final Lcom/efs/sdk/net/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/net/a/a/f;


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Lcom/efs/sdk/net/a/a/g;


# instance fields
.field private b:Lcom/efs/sdk/net/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/efs/sdk/net/a/a/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/efs/sdk/net/a/a/b;

    invoke-direct {v0}, Lcom/efs/sdk/net/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/net/a/a/g;->b:Lcom/efs/sdk/net/a/a/b;

    return-void
.end method

.method public static c()Lcom/efs/sdk/net/a/a/g;
    .locals 1

    sget-object v0, Lcom/efs/sdk/net/a/a/g;->c:Lcom/efs/sdk/net/a/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/efs/sdk/net/a/a/g;

    invoke-direct {v0}, Lcom/efs/sdk/net/a/a/g;-><init>()V

    sput-object v0, Lcom/efs/sdk/net/a/a/g;->c:Lcom/efs/sdk/net/a/a/g;

    :cond_0
    sget-object v0, Lcom/efs/sdk/net/a/a/g;->c:Lcom/efs/sdk/net/a/a/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    const-string p0, "NetTrace-Interceptor"

    const-string v0, "interpret response stream"

    invoke-static {p0, v0}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/efs/sdk/net/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 1

    const-string p0, "NetTrace-Interceptor"

    const-string v0, "data sent"

    invoke-static {p0, v0}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/efs/sdk/net/a/a/f$a;)V
    .locals 5

    const-string v0, "request will be sent"

    const-string v1, "NetTrace-Interceptor"

    invoke-static {v1, v0}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/efs/sdk/net/a/a/g;->b:Lcom/efs/sdk/net/a/a/b;

    :try_start_0
    invoke-interface {p1}, Lcom/efs/sdk/net/a/a/f$b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/efs/sdk/net/a/a/b;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/efs/sdk/net/a/a/f$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "save request"

    invoke-static {v1, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/efs/sdk/net/a/a;->a()Lcom/efs/sdk/net/a/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/efs/sdk/net/a/a;->a(Ljava/lang/String;)Lcom/efs/sdk/net/a/b;

    move-result-object p0

    invoke-interface {p1}, Lcom/efs/sdk/net/a/a/f$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/efs/sdk/net/a/b;->d:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/efs/sdk/net/a/a/f$a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/net/a/b;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/efs/sdk/net/a/a/b;->a(Lcom/efs/sdk/net/a/a/f$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/efs/sdk/net/a/b;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Lcom/efs/sdk/net/a/a/f$c;)V
    .locals 2

    const-string v0, "response headers received"

    const-string v1, "NetTrace-Interceptor"

    invoke-static {v1, v0}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/efs/sdk/net/a/a/g;->b:Lcom/efs/sdk/net/a/a/b;

    const-string v0, "save response"

    invoke-static {v1, v0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/efs/sdk/net/a/a/f$d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/efs/sdk/net/a/a/b;->a:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/efs/sdk/net/a/a;->a()Lcom/efs/sdk/net/a/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/efs/sdk/net/a/a;->a(Ljava/lang/String;)Lcom/efs/sdk/net/a/b;

    move-result-object p0

    invoke-interface {p1}, Lcom/efs/sdk/net/a/a/f$d;->b()I

    move-result p1

    iput p1, p0, Lcom/efs/sdk/net/a/b;->g:I

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string p0, "NetTrace-Interceptor"

    const-string v0, "next request id"

    invoke-static {p0, v0}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/efs/sdk/net/a/a/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
