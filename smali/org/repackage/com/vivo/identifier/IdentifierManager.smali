.class public final Lorg/repackage/com/vivo/identifier/IdentifierManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->b(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->H:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-static {v1, p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->c(ILjava/lang/String;)V

    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->H:Ljava/lang/String;

    :goto_0
    move-object v0, p0

    goto :goto_5

    :cond_1
    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->k:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    :try_start_2
    const-string v0, "VMS_SDK_Client"

    const-string v6, "queryId: lock error"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-ltz v0, :cond_2

    const-string v0, "VMS_SDK_Client"

    const-string v2, "query timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    if-nez p0, :cond_4

    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->y:Landroid/content/Context;

    const-class v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    monitor-enter v0

    :try_start_3
    sget-object v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    if-nez v2, :cond_3

    new-instance v2, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    sget-object v3, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->O:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    invoke-direct {v2, v3, v1}, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;-><init>(Lorg/repackage/com/vivo/identifier/IdentifierIdClient;I)V

    sput-object v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0

    throw p0

    :cond_4
    :goto_4
    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->H:Ljava/lang/String;

    invoke-static {v1, p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->c(ILjava/lang/String;)V

    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->H:Ljava/lang/String;

    goto :goto_0

    :goto_5
    return-object v0

    :goto_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
