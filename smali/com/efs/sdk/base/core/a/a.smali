.class public final Lcom/efs/sdk/base/core/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/core/a/a$a;
    }
.end annotation


# static fields
.field private static volatile b:J = -0x1L


# instance fields
.field public a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/base/core/a/a;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/base/core/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/core/a/a;
    .locals 1

    invoke-static {}, Lcom/efs/sdk/base/core/a/a$a;->a()Lcom/efs/sdk/base/core/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/efs/sdk/base/core/a/c;)Ljava/lang/String;
    .locals 1

    iget-byte p1, p1, Lcom/efs/sdk/base/core/a/c;->g:B

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "/api/v1/raw/upload"

    goto :goto_0

    :cond_0
    const-string p1, "/api/v1/mix/upload"

    goto :goto_0

    :cond_1
    const-string p1, "/perf_upload"

    goto :goto_0

    :cond_2
    const-string p1, "/apm_logs"

    :goto_0
    invoke-static {p0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/efs/sdk/base/http/HttpResponse;)V
    .locals 6

    const-string v0, "cver"

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/efs/sdk/base/core/d/d;->succ:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/efs/sdk/base/core/d/d;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/efs/sdk/base/core/d/d;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/efs/sdk/base/http/HttpResponse;->setBizCode(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/efs/sdk/base/core/d/d;->succ:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/efs/sdk/base/core/d/d;->extra:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string p0, "stm"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->b()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x16e360

    cmp-long p0, v2, v4

    if-lez p0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/efs/sdk/base/core/a/a;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :goto_1
    const-string v0, "efs.px.api"

    const-string v1, "checkPxReturn error"

    invoke-static {v0, v1, p0}, Lcom/efs/sdk/base/core/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b()J
    .locals 4

    sget-wide v0, Lcom/efs/sdk/base/core/a/a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/efs/sdk/base/core/a/a;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/efs/sdk/base/core/a/c;Ljava/io/File;Z)Lcom/efs/sdk/base/http/HttpResponse;
    .locals 2

    invoke-virtual {p2}, Lcom/efs/sdk/base/core/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/efs/sdk/base/core/a/a;->a(Ljava/lang/String;Lcom/efs/sdk/base/core/a/c;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Lcom/efs/sdk/base/core/a/a;->a:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Upload file, url is "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "efs.px.api"

    invoke-static {v1, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "wpk-header"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/efs/sdk/base/core/util/a/d;

    invoke-direct {v0, p1}, Lcom/efs/sdk/base/core/util/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/util/Map;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object p0

    iget-object p1, p0, Lcom/efs/sdk/base/core/util/a/d;->a:Lcom/efs/sdk/base/core/util/a/b;

    iput-object p3, p1, Lcom/efs/sdk/base/core/util/a/b;->d:Ljava/io/File;

    const-string p1, "type"

    iget-object p3, p2, Lcom/efs/sdk/base/core/a/c;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide p2, p2, Lcom/efs/sdk/base/core/a/c;->m:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "size"

    invoke-virtual {p0, p2, p1}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object p0

    const-string p1, "flow_limit"

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object p0

    invoke-static {}, Lcom/efs/sdk/base/core/a/d;->a()Lcom/efs/sdk/base/core/a/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/util/a/d;->a(Lcom/efs/sdk/base/http/AbsHttpListener;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/util/a/d;->a()Lcom/efs/sdk/base/core/util/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/util/a/c;->b()Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method
