.class public final Lcom/umeng/commonsdk/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/umeng/commonsdk/internal/b;


# instance fields
.field public c:Lcom/umeng/commonsdk/internal/c;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/internal/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/internal/b;->b:Lcom/umeng/commonsdk/internal/b;

    if-nez v1, :cond_1

    new-instance v1, Lcom/umeng/commonsdk/internal/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/umeng/commonsdk/internal/c;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v2, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    :cond_0
    iput-object v2, v1, Lcom/umeng/commonsdk/internal/b;->c:Lcom/umeng/commonsdk/internal/c;

    sput-object v1, Lcom/umeng/commonsdk/internal/b;->b:Lcom/umeng/commonsdk/internal/b;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/internal/b;->b:Lcom/umeng/commonsdk/internal/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method
