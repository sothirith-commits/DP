.class public final Lcom/umeng/analytics/pro/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/umeng/analytics/pro/au;

.field public static b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/umeng/analytics/pro/av;

    monitor-enter v0

    :try_start_0
    const-string v1, "MobclickRT"

    const-string v2, "--->>>*** real call OpenDeviceId.getOaid()"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/umeng/analytics/pro/av;->a:Lcom/umeng/analytics/pro/au;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/umeng/analytics/pro/av;->b:Z

    if-nez v1, :cond_1

    const-class v1, Lcom/umeng/analytics/pro/av;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/umeng/analytics/pro/av;->a:Lcom/umeng/analytics/pro/au;

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/umeng/analytics/pro/av;->b:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/umeng/analytics/pro/ax;->a()Lcom/umeng/analytics/pro/au;

    move-result-object v2

    sput-object v2, Lcom/umeng/analytics/pro/av;->a:Lcom/umeng/analytics/pro/au;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/umeng/analytics/pro/av;->b:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_2
    sget-object v1, Lcom/umeng/analytics/pro/av;->a:Lcom/umeng/analytics/pro/au;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1, p0}, Lcom/umeng/analytics/pro/au;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Context is null"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v0

    throw p0
.end method
