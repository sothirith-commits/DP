.class public final Lcom/umeng/ccg/d$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)J
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/pro/aa;

    instance-of v2, v1, Lcom/umeng/analytics/pro/ac;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/umeng/analytics/pro/ac;

    iget-wide v0, v1, Lcom/umeng/analytics/pro/ac;->a:J

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public static b(Ljava/util/ArrayList;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/pro/aa;

    invoke-interface {v2}, Lcom/umeng/analytics/pro/aa;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x3e8

    const-string p2, "MobclickRT"

    if-eqz p1, :cond_2

    :try_start_1
    const-string p1, "recv intent : ACTION_SCREEN_ON"

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/umeng/ccg/d;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/umeng/ccg/d$c;->b(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "report screen_on event."

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/umeng/ccg/d;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/umeng/ccg/d$c;->a(Ljava/util/ArrayList;)J

    move-result-wide v2

    sget-object p1, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v4, p1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    sget-object v6, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    mul-long v8, v2, v0

    const/4 v7, 0x0

    const/16 v5, 0x12d

    invoke-static/range {v4 .. v9}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;J)V

    goto :goto_0

    :cond_1
    const-string p1, "don\'t report screen_on event."

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "recv intent : ACTION_SCREEN_OFF"

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/umeng/ccg/d;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/umeng/ccg/d$c;->b(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "report screen_off event."

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/umeng/ccg/d;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/umeng/ccg/d$c;->a(Ljava/util/ArrayList;)J

    move-result-wide v2

    sget-object p1, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v4, p1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    sget-object v6, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    mul-long v8, v2, v0

    const/4 v7, 0x0

    const/16 v5, 0x12e

    invoke-static/range {v4 .. v9}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_3
    const-string p1, "don\'t report screen_off event."

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "recv intent : ACTION_USER_PRESENT"

    invoke-static {p2, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/umeng/ccg/d;->g:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/umeng/ccg/d$c;->b(Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "report screen_unlock event."

    invoke-static {p2, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/umeng/ccg/d;->g:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/umeng/ccg/d$c;->a(Ljava/util/ArrayList;)J

    move-result-wide p0

    sget-object p2, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v2, p2, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    sget-object v4, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    mul-long v6, p0, v0

    const/4 v5, 0x0

    const/16 v3, 0x12f

    invoke-static/range {v2 .. v7}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;J)V

    goto :goto_2

    :cond_5
    const-string p0, "don\'t report screen_unlock event."

    invoke-static {p2, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_6
    :goto_2
    return-void
.end method
