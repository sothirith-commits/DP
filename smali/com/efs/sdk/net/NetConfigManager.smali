.class public Lcom/efs/sdk/net/NetConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/efs/sdk/base/EfsReporter;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "NetConfigManager"

    iput-object v1, v0, Lcom/efs/sdk/net/NetConfigManager;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/efs/sdk/net/NetConfigManager;->b:I

    iput v2, v0, Lcom/efs/sdk/net/NetConfigManager;->d:I

    iput-boolean v2, v0, Lcom/efs/sdk/net/NetConfigManager;->f:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/efs/sdk/net/NetConfigManager;->g:Landroid/content/Context;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/efs/sdk/net/NetConfigManager;->c:Lcom/efs/sdk/base/EfsReporter;

    const-string v4, "net_launch"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "apm_netperf_sampling_rate_last"

    if-eqz v3, :cond_0

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/efs/sdk/net/NetConfigManager;->e:I

    :cond_0
    iget-object v3, v0, Lcom/efs/sdk/net/NetConfigManager;->g:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "apm_netperf_sampling_rate"

    const/4 v7, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v7

    :goto_0
    iget-object v8, v0, Lcom/efs/sdk/net/NetConfigManager;->c:Lcom/efs/sdk/base/EfsReporter;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/efs/sdk/net/NetConfigManager$1;

    invoke-direct {v9, v0}, Lcom/efs/sdk/net/NetConfigManager$1;-><init>(Lcom/efs/sdk/net/NetConfigManager;)V

    invoke-virtual {v8, v6, v9}, Lcom/efs/sdk/base/EfsReporter;->getAllSdkConfig([Ljava/lang/String;Lcom/efs/sdk/base/observer/IConfigCallback;)V

    if-eq v3, v7, :cond_2

    iput v3, v0, Lcom/efs/sdk/net/NetConfigManager;->d:I

    :cond_2
    invoke-static {}, Lcom/efs/sdk/base/samplingwhitelist/SamplingWhiteListUtil;->isHitWL()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-object v3, v0, Lcom/efs/sdk/net/NetConfigManager;->g:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v7, "03f870871950c148387b251894ed3e88"

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v3, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_1

    :cond_4
    move-wide v10, v8

    :goto_1
    const-string v12, "8f2f54c08600aa25915617fa1371441b"

    if-eqz v3, :cond_5

    invoke-interface {v3, v12, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    goto :goto_2

    :cond_5
    move v13, v2

    :goto_2
    iget v14, v0, Lcom/efs/sdk/net/NetConfigManager;->d:I

    if-nez v14, :cond_8

    if-eqz v13, :cond_6

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v12, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    cmp-long v1, v10, v8

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    :goto_3
    move v6, v2

    goto/16 :goto_8

    :cond_8
    iget v3, v0, Lcom/efs/sdk/net/NetConfigManager;->e:I

    if-eq v14, v3, :cond_9

    move v3, v6

    goto :goto_4

    :cond_9
    move v3, v2

    :goto_4
    iget v8, v0, Lcom/efs/sdk/net/NetConfigManager;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v9, v14, v10

    const-wide/32 v16, 0x5265c00

    if-eqz v13, :cond_a

    cmp-long v11, v9, v16

    if-gez v11, :cond_a

    if-nez v3, :cond_a

    const-string v3, " check in allready"

    invoke-static {v1, v3}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    cmp-long v9, v9, v16

    if-gez v9, :cond_c

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    const-string v3, "un repeat check in 24 hour!"

    invoke-static {v1, v3}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    :goto_5
    if-eqz v8, :cond_e

    const/16 v3, 0x64

    if-ne v8, v3, :cond_d

    goto :goto_6

    :cond_d
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-gt v3, v8, :cond_e

    :goto_6
    const-string v3, "random check in"

    invoke-static {v1, v3}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const-string v3, "random not check in!"

    invoke-static {v1, v3}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v2

    :goto_7
    iget-object v1, v0, Lcom/efs/sdk/net/NetConfigManager;->g:Landroid/content/Context;

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v3, v12, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_f
    if-eqz v1, :cond_10

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1, v7, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_10
    :goto_8
    iput-boolean v6, v0, Lcom/efs/sdk/net/NetConfigManager;->f:Z

    iget-object v1, v0, Lcom/efs/sdk/net/NetConfigManager;->g:Landroid/content/Context;

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_11

    iget v0, v0, Lcom/efs/sdk/net/NetConfigManager;->d:I

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_11
    return-void
.end method

.method public static synthetic a(Lcom/efs/sdk/net/NetConfigManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/net/NetConfigManager;->g:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public enableTracer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/efs/sdk/net/NetConfigManager;->f:Z

    return p0
.end method
