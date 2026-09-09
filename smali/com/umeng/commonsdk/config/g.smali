.class public final Lcom/umeng/commonsdk/config/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/umeng/commonsdk/config/b;[Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "Config"

    const-string p1, "--->>> SensitiveFieldHandler: handleConfigItem: invalid config value."

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "Config"

    const-string v3, "--->>> CollectFieldJudgment: handleConfigItem: item : "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    const/4 p0, 0x0

    move p1, p0

    :goto_0
    :try_start_1
    array-length v2, p2

    if-ge p1, v2, :cond_7

    aget-object v2, p2, p1

    invoke-static {v2}, Lcom/umeng/commonsdk/config/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-ltz p1, :cond_3

    const/16 v3, 0x3f

    if-le p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, p0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Lcom/umeng/commonsdk/config/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/umeng/commonsdk/config/b;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v5, Lcom/umeng/commonsdk/config/b;->a:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_1
    :cond_7
    return-void

    :catchall_2
    const-string p0, "Config"

    const-string p1, "--->>> SensitiveFieldHandler: handleConfigItem: parseLong exception."

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method
