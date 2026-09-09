.class public final Lcom/umeng/analytics/pro/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/au;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/repackage/com/meizu/flyme/openidsdk/OpenIdHelper;->b:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/repackage/com/meizu/flyme/openidsdk/OpenIdHelper;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lorg/repackage/com/meizu/flyme/openidsdk/OpenIdHelper;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ActivityThread:currentApplication --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpenIdHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    :goto_2
    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a()Lorg/repackage/com/meizu/flyme/openidsdk/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    return-object p0

    :cond_3
    invoke-static {}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a()Lorg/repackage/com/meizu/flyme/openidsdk/b;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, v1, Lorg/repackage/com/meizu/flyme/openidsdk/b;->b:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    if-nez v2, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-wide v4, v2, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    iget-object p0, v2, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->b:Ljava/lang/String;

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v1, p1, v0}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a(Landroid/content/Context;Z)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_7

    :cond_6
    const-string v4, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v4, v2, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_7

    :try_start_2
    invoke-static {v4}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a(Landroid/database/Cursor;)Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;

    move-result-object v5

    iget-object p0, v5, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->a:Ljava/lang/String;

    iput-object p0, v2, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->b:Ljava/lang/String;

    iget-wide v6, v5, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->c:J

    iput-wide v6, v2, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->a:J

    iget v2, v5, Lorg/repackage/com/meizu/flyme/openidsdk/ValueData;->b:I

    const/16 v5, 0x3e8

    if-eq v2, v5, :cond_8

    invoke-virtual {v1, p1}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->b(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v3}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, p1, v0}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a(Landroid/content/Context;Z)Z

    move-result p1

    const-string v0, "not support, forceQuery isSupported: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_1
    move-exception p1

    move-object v0, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_6

    :cond_7
    invoke-virtual {v1, p1, v3}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, p1, v0}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a(Landroid/content/Context;Z)Z

    move-result p1

    const-string v0, "forceQuery isSupported : "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_8
    :goto_5
    if-eqz v4, :cond_a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_8

    :catch_2
    move-exception p1

    move-object v0, p1

    move-object p1, p0

    :goto_6
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object p0, p1

    :cond_a
    :goto_7
    return-object p0

    :goto_8
    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    throw p0
.end method
