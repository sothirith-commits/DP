.class public final Lcom/umeng/commonsdk/statistics/internal/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;


# instance fields
.field public final synthetic a:Lretrofit2/OkHttpCall$1;


# direct methods
.method public constructor <init>(Lretrofit2/OkHttpCall$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c$2;->a:Lretrofit2/OkHttpCall$1;

    return-void
.end method


# virtual methods
.method public final onPreProcessImprintKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--->>> onImprintValueChanged: key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; value= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    sget-object p1, Lcom/umeng/commonsdk/config/FieldManager$a;->a:Lcom/umeng/commonsdk/config/FieldManager;

    iget-object p2, p0, Lcom/umeng/commonsdk/statistics/internal/c$2;->a:Lretrofit2/OkHttpCall$1;

    iget-object p2, p2, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/umeng/commonsdk/config/FieldManager;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c$2;->a:Lretrofit2/OkHttpCall$1;

    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object p2

    iget-object p2, p2, Lcom/umeng/commonsdk/internal/b;->c:Lcom/umeng/commonsdk/internal/c;

    const/4 v0, 0x0

    const v1, 0x8010

    invoke-static {p1, v1, p2, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/internal/c$2;->a:Lretrofit2/OkHttpCall$1;

    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p0

    const-string p1, "iscfg"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "MobclickRT"

    const-string v0, "--->>> unregistPreProcessCallback: unregist [iscfg] success."

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "MobclickRT"

    const-string p2, "--->>> unregistPreProcessCallback: can\'t find [iscfg], pls regist first."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_1
    sget-object p2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
