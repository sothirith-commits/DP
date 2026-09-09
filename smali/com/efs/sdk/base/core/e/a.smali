.class public abstract Lcom/efs/sdk/base/core/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/efs/sdk/base/core/e/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/efs/sdk/base/core/e/a/a;
.end method

.method public final a(Lcom/efs/sdk/base/core/d/b;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/e/a;->a:Lcom/efs/sdk/base/core/e/a/a;

    if-nez v0, :cond_1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/core/e/a;->a:Lcom/efs/sdk/base/core/e/a/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/e/a;->a()Lcom/efs/sdk/base/core/e/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/base/core/e/a;->a:Lcom/efs/sdk/base/core/e/a/a;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/efs/sdk/base/core/e/a;->a:Lcom/efs/sdk/base/core/e/a/a;

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->a(Lcom/efs/sdk/base/core/d/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_2
    const-string p1, "efs.processor"

    const-string v0, "log handle error"

    invoke-static {p1, v0, p0}, Lcom/efs/sdk/base/core/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
