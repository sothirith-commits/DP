.class public final Lcom/umeng/analytics/CoreProtocol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# static fields
.field public static a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/CoreProtocol;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;
    .locals 1

    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    :cond_0
    sget-object p0, Lcom/umeng/analytics/CoreProtocol$a;->a:Lcom/umeng/analytics/CoreProtocol;

    return-object p0
.end method


# virtual methods
.method public final onConnectionAvailable()V
    .locals 5

    sget-object p0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object p0

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/umeng/analytics/pro/o;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "MobclickRT"

    const-string v3, "--->>> network is now available, rebuild instant session data packet."

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    const/16 v4, 0x1101

    invoke-static {v1, v4, v3, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean p0, p0, Lcom/umeng/analytics/pro/o;->v:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    const/16 v3, 0x1102

    invoke-static {p0, v3, v0, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_4

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    return-void
.end method

.method public final removeCacheData(Lorg/json/JSONObject;)V
    .locals 0

    sget-object p0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/umeng/analytics/pro/o;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final setupReportData(J)Lorg/json/JSONObject;
    .locals 0

    sget-object p0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/o;->a(J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public final workEvent(ILjava/lang/Object;)V
    .locals 18

    move/from16 v0, p1

    move-object/from16 v1, p2

    sget-object v2, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/umeng/commonsdk/utils/c;->a()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/16 v3, 0x1105

    if-ne v0, v3, :cond_23

    :try_start_0
    const-string v3, "MobclickRT"

    const-string v6, "--->>> clean db in silent mode."

    invoke-static {v3, v6}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Lcom/umeng/commonsdk/utils/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "clean"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    sget-object v3, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_9

    :pswitch_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->RTD_SP_FILE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1
    if-nez v1, :cond_1

    goto/16 :goto_9

    :cond_1
    instance-of v0, v1, Lorg/json/JSONObject;

    if-eqz v0, :cond_23

    :try_start_1
    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "startTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "period"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lorg/json/JSONObject;

    const-string v3, "debugkey"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    sget-object v4, Lcom/umeng/analytics/AnalyticsConfig;->RTD_SP_FILE:Ljava/lang/String;

    const-string v5, "startTime"

    invoke-static {v3, v4, v5, v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v3, "period"

    invoke-static {v0, v4, v3, v2}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v2, "debugkey"

    invoke-static {v0, v4, v2, v1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    goto/16 :goto_9

    :pswitch_2
    const-string v0, "header_foreground_count"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getGlobleActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "fg_count"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v7

    const/16 v5, 0x303

    const/16 v6, 0x2015

    const/4 v8, 0x0

    const-wide/16 v9, 0x1388

    invoke-static/range {v4 .. v10}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    goto/16 :goto_9

    :pswitch_3
    const-string v0, "MobclickRT"

    const-string v1, "--->>> recv BUILD_ENVELOPE_IMMEDIATELY."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v2, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v0, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v2, v5}, Lcom/umeng/analytics/pro/o;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    goto/16 :goto_9

    :pswitch_4
    invoke-virtual {v2, v4}, Lcom/umeng/analytics/pro/o;->a$1(Z)V

    goto/16 :goto_9

    :pswitch_5
    const-string v0, "MobclickRT"

    const-string v1, "--->>> receive DELAY_BUILD_ENVELOPE event."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const/16 v1, 0x2011

    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const/16 v1, 0x1102

    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_6
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, v3}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_7
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_8
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_4

    monitor-exit v0

    goto/16 :goto_9

    :cond_4
    :try_start_4
    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "unregisterSuperPropertyByCoreProtocol can not be called in child process"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    goto/16 :goto_9

    :cond_5
    :try_start_5
    iget-object v1, v0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sp_uapp"

    iget-object v3, v0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/umeng/analytics/b;->k:Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :goto_0
    monitor-exit v0

    goto/16 :goto_9

    :pswitch_9
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;

    monitor-enter v0

    :try_start_6
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "clearSuperPropertiesByCoreProtocol can not be called in child process"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v0

    goto/16 :goto_9

    :cond_7
    :try_start_7
    sget-object v1, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sp_uapp"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    :cond_8
    monitor-exit v0

    goto/16 :goto_9

    :pswitch_a
    sget-object v0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b;->a(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_b
    if-nez v1, :cond_9

    goto/16 :goto_9

    :cond_9
    sget-object v0, Lcom/umeng/analytics/pro/o;->y:Ljava/lang/Class;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/umeng/analytics/pro/o;->z:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    goto/16 :goto_9

    :cond_a
    const-string v0, "MobclickRT"

    const-string v2, "--->>> PROFILE_CHANGE_NOTIFY"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    const-string v0, ""

    const-string v2, ""

    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_23

    check-cast v1, Lorg/json/JSONObject;

    const-string v3, "uid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "provider"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v0, "provider"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_b
    sget-object v1, Lcom/umeng/analytics/pro/o;->y:Ljava/lang/Class;

    if-eqz v1, :cond_23

    sget-object v3, Lcom/umeng/analytics/pro/o;->z:Ljava/lang/reflect/Method;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-eqz v3, :cond_23

    :try_start_9
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/16 :goto_9

    :catchall_3
    :try_start_a
    const-string v0, "MobclickRT"

    const-string v1, "--->>> reflect call setPuidAndProvider method of crash lib failed."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_c
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v1, :cond_23

    invoke-virtual {v2, v1}, Lcom/umeng/analytics/pro/o;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/o;->d$1()V

    goto/16 :goto_9

    :cond_c
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v0

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto/16 :goto_9

    :pswitch_d
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/o;->d$1()V

    invoke-virtual {v2, v5}, Lcom/umeng/analytics/pro/o;->a(Z)V

    goto/16 :goto_9

    :pswitch_e
    invoke-virtual {v2, v5}, Lcom/umeng/analytics/pro/o;->a$1(Z)V

    goto/16 :goto_9

    :pswitch_f
    const-string v0, "MobclickRT"

    const-string v3, "--->>> INSTANT_SESSION_START"

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/pro/u$a;->a:Lcom/umeng/analytics/pro/u;

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MobclickRT"

    const-string v8, "--->>> force generate new session: session id = "

    const-string v9, "------>>> lastActivityEndTime: "

    :try_start_b
    sget-object v10, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    if-nez v10, :cond_d

    invoke-static {v3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    :cond_d
    if-nez v1, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    goto :goto_1

    :cond_e
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_1
    sget-object v1, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_f

    goto/16 :goto_2

    :cond_f
    const-string v3, "a_end_time"

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/umeng/analytics/pro/u;->k:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/umeng/analytics/pro/u;->k:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "versionname"

    const-string v6, ""

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const-string v9, "session_start_time"

    if-nez v7, :cond_11

    :try_start_c
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "--->>> requestNewInstantSessionIf: version upgrade"

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v1, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/umeng/analytics/pro/o;->a$1(Z)V

    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object v1

    sget-object v3, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/umeng/analytics/pro/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v5, Lcom/umeng/analytics/pro/u;->j:Z

    sget-object v0, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v0, v10, v11, v5}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;JZ)V

    goto :goto_2

    :cond_11
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object v3

    sget-object v6, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/umeng/analytics/pro/y;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "--->>> More then 30 sec from last session."

    invoke-static {v0, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v5, Lcom/umeng/analytics/pro/u;->j:Z

    invoke-interface {v1, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v0, v10, v11, v4}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;JZ)V

    goto :goto_2

    :cond_12
    const-string v1, "--->>> less then 30 sec from last session, do nothing."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/umeng/analytics/pro/u;->j:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    :goto_2
    iget-object v3, v2, Lcom/umeng/analytics/pro/o;->w:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    iput-boolean v5, v2, Lcom/umeng/analytics/pro/o;->u:Z

    monitor-exit v3

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :pswitch_10
    const-string v0, "__ii"

    :try_start_e
    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_23

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    invoke-static {v0, v3, v1}, Lcom/umeng/analytics/pro/i;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto/16 :goto_9

    :pswitch_11
    invoke-virtual {v2}, Lcom/umeng/analytics/pro/o;->d$1()V

    goto/16 :goto_9

    :pswitch_12
    sget-object v0, Lcom/umeng/analytics/pro/u$a;->a:Lcom/umeng/analytics/pro/u;

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/umeng/analytics/pro/u;->c(Landroid/content/Context;Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_13
    const-string v0, "MobclickRT"

    const-string v8, "--->>> START_SESSION"

    invoke-static {v0, v8}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/pro/u$a;->a:Lcom/umeng/analytics/pro/u;

    sget-object v8, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    const-string v9, "versionname"

    const-string v10, "Extend current session: "

    const-string v11, "Continuing previous session: "

    const-string v12, "mSessionChanged flag has been set, Start new session: "

    const-string v13, "Creating new session: "

    const-string v14, "--->>> onStartSessionInternal: upgrade version: "

    :try_start_f
    sget-object v15, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    if-nez v15, :cond_13

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    sput-object v15, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    goto :goto_3

    :catchall_6
    move-object/from16 v17, v2

    goto/16 :goto_6

    :cond_13
    :goto_3
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v1, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_14

    :goto_4
    move-object v0, v2

    goto/16 :goto_8

    :cond_14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    if-nez v15, :cond_15

    goto :goto_4

    :cond_15
    invoke-interface {v1, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v16, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    const-string v4, "MobclickRT"

    move-object/from16 v17, v2

    const-string v2, "versioncode"

    if-eqz v16, :cond_16

    :try_start_10
    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15, v9, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_7

    :cond_16
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_19

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v4, "pre_date"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "pre_version"

    invoke-interface {v1, v11, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15, v9, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "vers_date"

    invoke-interface {v15, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "vers_pre_version"

    invoke-interface {v15, v1, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "cur_version"

    invoke-interface {v15, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "vers_code"

    invoke-interface {v15, v0, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "vers_name"

    invoke-interface {v15, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-boolean v0, Lcom/umeng/analytics/pro/u;->l:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/analytics/pro/u;->l:Z

    goto :goto_5

    :cond_17
    const/4 v0, 0x0

    :goto_5
    sget-boolean v1, Lcom/umeng/analytics/pro/u;->j:Z

    if-eqz v1, :cond_18

    sput-boolean v0, Lcom/umeng/analytics/pro/u;->j:Z

    sget-object v0, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v6, v7, v1}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;JZ)Z

    sget-object v0, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;)V

    :catchall_7
    :cond_18
    :goto_6
    move-object/from16 v0, v17

    goto/16 :goto_8

    :cond_19
    :goto_7
    sget-boolean v0, Lcom/umeng/analytics/pro/u;->j:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/analytics/pro/u;->j:Z

    sget-boolean v1, Lcom/umeng/analytics/pro/u;->l:Z

    if-eqz v1, :cond_1a

    sput-boolean v0, Lcom/umeng/analytics/pro/u;->l:Z

    :cond_1a
    invoke-static {v8}, Lcom/umeng/analytics/pro/u;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/u;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/analytics/pro/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/analytics/pro/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_1b
    const-string v0, "session_id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/u;->h:Ljava/lang/String;

    const-string v0, "a_start_time"

    invoke-interface {v15, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_end_time"

    const-wide/16 v1, 0x0

    invoke-interface {v15, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/analytics/pro/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/analytics/pro/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/umeng/analytics/pro/u;->l:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/analytics/pro/u;->l:Z

    const-string v0, "header_foreground_count"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v1, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    const/16 v2, 0x303

    const/16 v3, 0x2015

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    :cond_1c
    invoke-static {v8}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V

    invoke-static {v8}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->d$1()V

    sget-object v0, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/o;->a(Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto/16 :goto_6

    :goto_8
    iget-object v2, v0, Lcom/umeng/analytics/pro/o;->w:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_11
    iput-boolean v1, v0, Lcom/umeng/analytics/pro/o;->v:Z

    monitor-exit v2

    goto/16 :goto_9

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v0

    :pswitch_14
    move-object v0, v2

    const-string v2, "MobclickRT"

    const-string v3, "--->>> PROFILE_SIGNOFF"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/o;->a$1(Z)V

    const-string v2, "--->>> onProfileSignIn: force generate new session: session id = "

    :try_start_12
    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_1d

    goto/16 :goto_9

    :cond_1d
    const-string v3, "ts"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->d$1()V

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    aget-object v5, v0, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/umeng/analytics/pro/u$a;->a:Lcom/umeng/analytics/pro/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/umeng/analytics/pro/u;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v1, "session_start_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1e
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickRT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v3, v4, v1}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;JZ)Z

    move-result v0

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    sget-object v5, Lcom/umeng/analytics/c;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, v1

    const/4 v1, 0x1

    aput-object v6, v5, v1

    if-eqz v2, :cond_1f

    invoke-static {v2}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/umeng/common/b;->e()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "au_p"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "au_u"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1f
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v3, v4, v2}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;JZ)V

    if-eqz v0, :cond_23

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto/16 :goto_9

    :catchall_9
    move-exception v0

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, " Excepthon  in  onProfileSignOff"

    const-string v2, "MobclickAgent"

    invoke-static {v2, v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :pswitch_15
    move-object v0, v2

    const-string v2, "MobclickRT"

    const-string v3, "--->>> PROFILE_SIGNIN"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/o;->a$1(Z)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/o;->g(Ljava/lang/Object;)V

    goto :goto_9

    :pswitch_16
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->c(Landroid/content/Context;)V

    goto :goto_9

    :pswitch_17
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/v;->a(Landroid/content/Context;)V

    goto :goto_9

    :pswitch_18
    move-object v0, v2

    if-eqz v1, :cond_20

    :try_start_13
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/o;->e(Ljava/lang/Object;)V

    :cond_20
    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "__i"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/o;->a(Z)V

    goto :goto_9

    :pswitch_19
    move-object v0, v2

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v1, :cond_21

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/o;->e(Ljava/lang/Object;)V

    :cond_21
    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "__i"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/o;->a(Z)V

    goto :goto_9

    :cond_22
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v0

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :catchall_a
    :cond_23
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1100
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2003
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2007
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2010
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2015
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
