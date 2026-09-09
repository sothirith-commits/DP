.class public final Lcom/umeng/commonsdk/statistics/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/a$a;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/utils/b;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/umeng/commonsdk/utils/b$a;->a:Lcom/umeng/commonsdk/utils/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.android.vending"

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/umeng/commonsdk/utils/b;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/a$b;

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/a$b;-><init>(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/a$c;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/a$b;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/umeng/commonsdk/statistics/common/a$c;->a:Landroid/os/IBinder;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/a$c;->a()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/a$c;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/a$a;

    invoke-direct {v1, v3, v2}, Lcom/umeng/commonsdk/statistics/common/a$a;-><init>(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :goto_1
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
