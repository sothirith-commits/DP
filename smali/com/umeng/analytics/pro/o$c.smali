.class public final Lcom/umeng/analytics/pro/o$c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

.field public b:I

.field public c:I

.field public final d:I

.field public final e:I

.field public final f:Lcom/umeng/commonsdk/statistics/noise/ABTest;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    const/4 v1, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/o$c;->b:I

    iput v1, p0, Lcom/umeng/analytics/pro/o$c;->c:I

    iput v1, p0, Lcom/umeng/analytics/pro/o$c;->d:I

    iput v1, p0, Lcom/umeng/analytics/pro/o$c;->e:I

    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    return-void
.end method

.method public static a()[I
    .locals 5

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v1, "report_policy"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v3, "report_interval"

    invoke-static {v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    const/16 v3, 0x8

    const/16 v4, 0xb

    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 v3, 0x6

    if-ne v3, v0, :cond_3

    const/16 v3, 0x5a

    if-eq v1, v2, :cond_1

    if-lt v1, v3, :cond_1

    const v2, 0x15180

    if-le v1, v2, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    mul-int/lit16 v1, v1, 0x3e8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0

    :cond_3
    if-ne v4, v0, :cond_6

    const/16 v3, 0xf

    if-eq v1, v2, :cond_4

    if-lt v1, v3, :cond_4

    const/16 v2, 0xe10

    if-le v1, v2, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    mul-int/lit16 v1, v1, 0x3e8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0

    :cond_6
    filled-new-array {v2, v2}, [I

    move-result-object v0

    return-object v0

    :cond_7
    :goto_0
    filled-new-array {v2, v2}, [I

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .locals 9

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x4

    const-wide/32 v1, 0x5265c00

    if-eq p1, v0, :cond_d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_b

    const/4 v0, 0x6

    const-wide/32 v3, 0x15f90

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    const-wide/16 v0, 0x3a98

    const-wide/16 v5, 0xbb8

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    int-to-long v7, p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long p2, v7, v5

    if-ltz p2, :cond_2

    cmp-long p2, v7, v3

    if-gtz p2, :cond_2

    iput-wide v7, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->mReportInterval:J

    goto/16 :goto_0

    :cond_2
    iput-wide v0, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->mReportInterval:J

    goto/16 :goto_0

    :cond_3
    new-instance p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;-><init>()V

    int-to-long p1, p2

    cmp-long v2, p1, v5

    if-ltz v2, :cond_4

    cmp-long v2, p1, v3

    if-gtz v2, :cond_4

    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->mReportInterval:J

    goto/16 :goto_0

    :cond_4
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->mReportInterval:J

    goto/16 :goto_0

    :cond_5
    iget-object p0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    if-eqz p1, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    goto/16 :goto_0

    :cond_7
    iget-object p0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-eqz p1, :cond_9

    move-object p1, p0

    check-cast p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    int-to-long v5, p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long p2, v5, v3

    if-ltz p2, :cond_8

    cmp-long p2, v5, v1

    if-gtz p2, :cond_8

    iput-wide v5, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    goto :goto_0

    :cond_8
    iput-wide v3, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    goto :goto_0

    :cond_9
    new-instance p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    int-to-long p1, p2

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    cmp-long v0, p1, v3

    if-ltz v0, :cond_a

    cmp-long v0, p1, v1

    if-gtz v0, :cond_a

    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    goto :goto_0

    :cond_a
    iput-wide v3, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    goto :goto_0

    :cond_b
    iget-object p0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    if-eqz p1, :cond_c

    goto :goto_0

    :cond_c
    new-instance p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_d
    iget-object p0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    if-eqz p1, :cond_e

    goto :goto_0

    :cond_e
    new-instance p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;->HOURS_DAY:J

    goto :goto_0

    :cond_f
    iget-object p0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p1, :cond_10

    goto :goto_0

    :cond_10
    new-instance p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto :goto_0

    :cond_11
    iget-object p0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    if-eqz p1, :cond_12

    goto :goto_0

    :cond_12
    new-instance p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .locals 9

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v0

    iget v1, v0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v4, v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    iput-object v0, v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->defcon:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_5

    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v1, "integrated_test"

    const-string v4, "-1"

    invoke-static {v0, v1, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/umeng/analytics/pro/j;->K:Ljava/lang/String;

    const-string v6, "\\|"

    invoke-static {v0, v2, v6, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    iget-boolean v5, v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    iget v6, p0, Lcom/umeng/analytics/pro/o$c;->e:I

    const/4 v7, -0x1

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    const-string v8, "RPT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    const/4 v8, 0x6

    if-ne v5, v8, :cond_9

    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v5, "test_report_interval"

    invoke-static {v1, v5, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v7, :cond_7

    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1, v5, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v7, :cond_6

    const/16 v4, 0x5a

    if-lt v1, v4, :cond_6

    const v4, 0x15180

    if-le v1, v4, :cond_5

    goto :goto_2

    :cond_5
    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_3

    :cond_6
    :goto_2
    const v1, 0x15f90

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/umeng/analytics/pro/o$c;->c:I

    if-lez v1, :cond_8

    goto :goto_3

    :cond_8
    move v1, v6

    :cond_9
    :goto_3
    iget v0, v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/pro/o$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_5

    :cond_a
    iget v0, p0, Lcom/umeng/analytics/pro/o$c;->b:I

    if-eq v0, v7, :cond_b

    iget v6, p0, Lcom/umeng/analytics/pro/o$c;->c:I

    goto :goto_4

    :cond_b
    iget v0, p0, Lcom/umeng/analytics/pro/o$c;->d:I

    :goto_4
    invoke-virtual {p0, v0, v6}, Lcom/umeng/analytics/pro/o$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    :goto_5
    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v0, :cond_10

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-eqz v1, :cond_c

    :try_start_1
    sget-object v0, Lcom/umeng/analytics/pro/j;->I:Ljava/lang/String;

    invoke-static {v0, v2, v4, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "@"

    const-wide/16 v6, 0x3e8

    if-eqz v1, :cond_d

    :try_start_2
    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    iget-wide v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/umeng/analytics/pro/j;->J:Ljava/lang/String;

    invoke-static {v3, v2, v4, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-eqz v1, :cond_e

    sget-object v0, Lcom/umeng/analytics/pro/j;->L:Ljava/lang/String;

    invoke-static {v0, v2, v4, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    iget-wide v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->mReportInterval:J

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/umeng/analytics/pro/j;->M:Ljava/lang/String;

    invoke-static {v3, v2, v4, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_10
    :goto_6
    iget-object p0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return-object p0
.end method
