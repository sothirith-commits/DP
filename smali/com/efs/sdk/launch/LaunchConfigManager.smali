.class public Lcom/efs/sdk/launch/LaunchConfigManager;
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

    const-string v1, "LaunchConfigManager"

    iput-object v1, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->b:I

    const/16 v3, 0x64

    iput v3, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->d:I

    iput-boolean v2, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->f:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->g:Landroid/content/Context;

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->c:Lcom/efs/sdk/base/EfsReporter;

    const-string v5, "efs_launch"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "apm_startperf_sampling_rate_last"

    if-eqz v4, :cond_0

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->e:I

    :cond_0
    iget-object v4, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->g:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "apm_startperf_sampling_rate"

    const/4 v8, -0x1

    if-eqz v4, :cond_1

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    iget-object v9, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->c:Lcom/efs/sdk/base/EfsReporter;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lcom/efs/sdk/launch/LaunchConfigManager$1;

    invoke-direct {v10, v0}, Lcom/efs/sdk/launch/LaunchConfigManager$1;-><init>(Lcom/efs/sdk/launch/LaunchConfigManager;)V

    invoke-virtual {v9, v7, v10}, Lcom/efs/sdk/base/EfsReporter;->getAllSdkConfig([Ljava/lang/String;Lcom/efs/sdk/base/observer/IConfigCallback;)V

    if-eq v4, v8, :cond_2

    iput v4, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->d:I

    :cond_2
    iget-object v4, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->g:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "03f870871950c148387b251894ed3e88"

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_1

    :cond_3
    move-wide v10, v8

    :goto_1
    const-string v12, "8f2f54c08600aa25915617fa1371441b"

    if-eqz v4, :cond_4

    invoke-interface {v4, v12, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    goto :goto_2

    :cond_4
    move v13, v2

    :goto_2
    iget v14, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->d:I

    if-nez v14, :cond_7

    if-eqz v13, :cond_5

    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1, v12, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    cmp-long v1, v10, v8

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    :goto_3
    move v8, v2

    goto/16 :goto_8

    :cond_7
    invoke-static {}, Lcom/efs/sdk/base/samplingwhitelist/SamplingWhiteListUtil;->isHitWL()Z

    move-result v4

    const/4 v8, 0x1

    if-eqz v4, :cond_8

    goto/16 :goto_8

    :cond_8
    iget v4, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->d:I

    iget v9, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->e:I

    if-eq v4, v9, :cond_9

    move v4, v8

    goto :goto_4

    :cond_9
    move v4, v2

    :goto_4
    iget v9, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v10

    const-wide/32 v16, 0x5265c00

    if-eqz v13, :cond_a

    cmp-long v13, v10, v16

    if-gez v13, :cond_a

    if-nez v4, :cond_a

    sget-boolean v3, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v3, :cond_12

    const-string v3, " check in allready"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_a
    cmp-long v10, v10, v16

    if-gez v10, :cond_c

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    sget-boolean v3, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v3, :cond_6

    const-string v3, "un repeat check in 24 hour!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    :goto_5
    if-eqz v9, :cond_e

    if-ne v9, v3, :cond_d

    goto :goto_6

    :cond_d
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-gt v3, v9, :cond_e

    :goto_6
    sget-boolean v3, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v3, :cond_10

    const-string v3, "random check in"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    sget-boolean v3, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    if-eqz v3, :cond_f

    const-string v3, "random not check in!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move v8, v2

    :cond_10
    :goto_7
    iget-object v1, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->g:Landroid/content/Context;

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-interface {v3, v12, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_11
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1, v7, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_12
    :goto_8
    iput-boolean v8, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->f:Z

    iget-object v1, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->g:Landroid/content/Context;

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_13

    iget v0, v0, Lcom/efs/sdk/launch/LaunchConfigManager;->d:I

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_13
    return-void
.end method

.method public static synthetic a(Lcom/efs/sdk/launch/LaunchConfigManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/launch/LaunchConfigManager;->g:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public enableTracer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/efs/sdk/launch/LaunchConfigManager;->f:Z

    return p0
.end method
