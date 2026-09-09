.class public final Lorg/repackage/com/meizu/flyme/openidsdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:Lorg/repackage/com/meizu/flyme/openidsdk/b;


# instance fields
.field public final a:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

.field public final b:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

.field public final c:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

.field public final d:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

.field public final g:Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;

.field public h:Lorg/repackage/com/meizu/flyme/openidsdk/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    const-string v1, "udid"

    invoke-direct {v0, v1}, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    new-instance v0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    const-string v1, "oaid"

    invoke-direct {v0, v1}, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/b;->b:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    new-instance v0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    const-string v1, "vaid"

    invoke-direct {v0, v1}, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/b;->d:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    new-instance v0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    const-string v1, "aaid"

    invoke-direct {v0, v1}, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/b;->c:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    new-instance v0, Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;

    invoke-direct {v0}, Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;-><init>()V

    iput-object v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/b;->g:Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;
    .locals 5

    new-instance v0, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->c:J

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "value"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->a:Ljava/lang/String;

    :cond_1
    const-string v1, "code"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->b:I

    :cond_2
    const-string v1, "expired"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->c:J

    :cond_3
    return-object v0
.end method

.method public static final a()Lorg/repackage/com/meizu/flyme/openidsdk/b;
    .locals 2

    sget-object v0, Lorg/repackage/com/meizu/flyme/openidsdk/b;->e:Lorg/repackage/com/meizu/flyme/openidsdk/b;

    if-nez v0, :cond_1

    const-class v0, Lorg/repackage/com/meizu/flyme/openidsdk/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/repackage/com/meizu/flyme/openidsdk/b;->e:Lorg/repackage/com/meizu/flyme/openidsdk/b;

    if-nez v1, :cond_0

    new-instance v1, Lorg/repackage/com/meizu/flyme/openidsdk/b;

    invoke-direct {v1}, Lorg/repackage/com/meizu/flyme/openidsdk/b;-><init>()V

    sput-object v1, Lorg/repackage/com/meizu/flyme/openidsdk/b;->e:Lorg/repackage/com/meizu/flyme/openidsdk/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lorg/repackage/com/meizu/flyme/openidsdk/b;->e:Lorg/repackage/com/meizu/flyme/openidsdk/b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Z
    .locals 10

    iget-object p0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/b;->g:Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;

    invoke-virtual {p0}, Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;->a$1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    iget-object p0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;->b:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    const-string v0, "com.meizu.flyme.openidsdk"

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    :goto_0
    move-object v0, v3

    goto :goto_1

    :cond_3
    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v1

    :cond_5
    :try_start_0
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_6
    move-object p2, v3

    :goto_2
    invoke-virtual {p0}, Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;->a$1()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "use same version cache, safeVersion : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;->b:Ljava/lang/Boolean;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_8
    return v1

    :cond_9
    :goto_3
    iput-object p2, p0, Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;->a:Ljava/lang/String;

    const-string p2, "content://com.meizu.flyme.openidsdk/"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p1, "supported"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v3}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a(Landroid/database/Cursor;)Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;

    move-result-object p1

    iget p2, p1, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->b:I

    const/16 v0, 0x3e8

    if-ne v0, p2, :cond_a

    const-string p2, "0"

    iget-object p1, p1, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_b

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_a
    :goto_4
    move v1, v2

    :cond_b
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :cond_c
    if-eqz v3, :cond_d

    goto :goto_5

    :goto_6
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_d

    goto :goto_5

    :cond_d
    :goto_7
    const-string p1, "query support, result : "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/repackage/com/meizu/flyme/openidsdk/SupportInfo;->b:Ljava/lang/Boolean;

    return v1

    :goto_8
    if-eqz v3, :cond_e

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_e
    throw p0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/b;->h:Lorg/repackage/com/meizu/flyme/openidsdk/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lorg/repackage/com/meizu/flyme/openidsdk/a;

    invoke-direct {v1}, Lorg/repackage/com/meizu/flyme/openidsdk/a;-><init>()V

    iput-object v1, p0, Lorg/repackage/com/meizu/flyme/openidsdk/b;->h:Lorg/repackage/com/meizu/flyme/openidsdk/a;

    const-string v2, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
