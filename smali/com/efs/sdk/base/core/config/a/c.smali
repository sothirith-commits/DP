.class public final Lcom/efs/sdk/base/core/config/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/core/config/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Random;


# instance fields
.field public b:Lcom/efs/sdk/base/IConfigRefreshAction;

.field public c:Z

.field public d:Lcom/efs/sdk/base/core/config/a/b;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/efs/sdk/base/observer/IConfigCallback;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Lcom/efs/sdk/base/core/config/a/e;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/efs/sdk/base/core/config/a/c;->a:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/base/core/config/a/c;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->e:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/efs/sdk/base/core/util/concurrent/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->f:Landroid/os/Handler;

    new-instance v0, Lcom/efs/sdk/base/core/config/a/e;

    invoke-direct {v0}, Lcom/efs/sdk/base/core/config/a/e;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->g:Lcom/efs/sdk/base/core/config/a/e;

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/b;->a()Lcom/efs/sdk/base/core/config/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    iget-wide v0, v0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->configRefreshDelayMills:J

    iput-wide v0, p0, Lcom/efs/sdk/base/core/config/a/c;->h:J

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/a/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/core/config/a/c;
    .locals 1

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c$a;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/efs/sdk/base/core/config/a/c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->e:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lcom/efs/sdk/base/core/config/a/b;)Z
    .locals 2

    iget-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget v0, v0, Lcom/efs/sdk/base/core/config/a/b;->a:I

    iget v1, p1, Lcom/efs/sdk/base/core/config/a/b;->a:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current config version ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget p0, p0, Lcom/efs/sdk/base/core/config/a/b;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is older than another ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/efs/sdk/base/core/config/a/b;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "efs.config"

    invoke-static {p1, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/efs/sdk/base/core/config/a/c;)Lcom/efs/sdk/base/core/config/a/b;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    return-object p0
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/efs/sdk/base/core/c/f$a;->a()Lcom/efs/sdk/base/core/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/c/f;->a()Z

    move-result v0

    const-string v1, "efs.config"

    if-nez v0, :cond_0

    const-string p0, "has no permission to refresh config from remote"

    invoke-static {v1, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/efs/sdk/base/core/config/a/c;->c:Z

    if-nez v0, :cond_1

    const-string p0, "disable refresh config from remote"

    invoke-static {v1, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/a/c;->g()Lcom/efs/sdk/base/IConfigRefreshAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/efs/sdk/base/IConfigRefreshAction;->refresh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "from server. efs config is "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/efs/sdk/base/core/config/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->g:Lcom/efs/sdk/base/core/config/a/e;

    iget-object v1, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/core/config/a/e;->a(Lcom/efs/sdk/base/core/config/a/b;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :catchall_0
    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->f:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private g()Lcom/efs/sdk/base/IConfigRefreshAction;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->b:Lcom/efs/sdk/base/IConfigRefreshAction;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/a;->a()Lcom/efs/sdk/base/core/config/a/a;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private h()Z
    .locals 6

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/e;->b()V

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/a/c;->g:Lcom/efs/sdk/base/core/config/a/e;

    invoke-virtual {v2}, Lcom/efs/sdk/base/core/config/a/e;->c()V

    iget-object v3, v2, Lcom/efs/sdk/base/core/config/a/e;->a:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/efs/sdk/base/core/config/a/e;->a:Landroid/content/SharedPreferences;

    const-string v3, "last_refresh_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget-wide v0, p0, Lcom/efs/sdk/base/core/config/a/b;->d:J

    const-wide/32 v4, 0xea60

    mul-long/2addr v0, v4

    cmp-long p0, v2, v0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private i()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getCallback(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget-object v4, v4, Lcom/efs/sdk/base/core/config/a/b;->f:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    invoke-virtual {v4}, Landroid/os/Message;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getEfsReporterObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/efs/sdk/base/observer/IEfsReporterObserver;

    invoke-interface {v0}, Lcom/efs/sdk/base/observer/IEfsReporterObserver;->onConfigChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    const-string v0, "efs.config"

    invoke-static {v0, p0}, Lcom/efs/sdk/base/core/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget-object v0, v0, Lcom/efs/sdk/base/core/config/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget v0, v0, Lcom/efs/sdk/base/core/config/a/b;->a:I

    if-gt p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "current config version is "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", no need to refresh"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "efs.config"

    invoke-static {p1, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x1

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->f:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/b;->a()Lcom/efs/sdk/base/core/config/a/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/efs/sdk/base/core/config/a/d;->a(Ljava/lang/String;Lcom/efs/sdk/base/core/config/a/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/efs/sdk/base/core/config/a/c;->a(Lcom/efs/sdk/base/core/config/a/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/a/c;->f()V

    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/a/c;->i()V

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/config/a/c;->d()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->f:Landroid/os/Handler;

    const/4 p1, 0x1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/efs/sdk/base/core/config/a/c;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/b;->f:Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final d()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/efs/sdk/base/core/config/a/c$1;

    invoke-direct {v1, p0}, Lcom/efs/sdk/base/core/config/a/c$1;-><init>(Lcom/efs/sdk/base/core/config/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "efs.config"

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/a/c;->f()V

    goto/16 :goto_4

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/efs/sdk/base/core/c/f$a;->a()Lcom/efs/sdk/base/core/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/efs/sdk/base/core/c/f;->a()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/a/c;->h()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "No update is required, less than 8h since the last update"

    invoke-static {v2, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/a/c;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget v0, v0, Lcom/efs/sdk/base/core/config/a/b;->a:I

    if-gt p1, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "current config version is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", no need to refresh"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "current config version("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget p0, p0, Lcom/efs/sdk/base/core/config/a/b;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/a/c;->e()V

    goto/16 :goto_4

    :cond_6
    invoke-static {}, Lcom/efs/sdk/base/core/config/a/e;->a()Z

    move-result p1

    const-string v0, "delete old config is "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->f:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    :cond_7
    iget-object p1, p0, Lcom/efs/sdk/base/core/config/a/c;->g:Lcom/efs/sdk/base/core/config/a/e;

    invoke-virtual {p1}, Lcom/efs/sdk/base/core/config/a/e;->c()V

    iget-object v0, p1, Lcom/efs/sdk/base/core/config/a/e;->a:Landroid/content/SharedPreferences;

    const/4 v3, -0x1

    if-nez v0, :cond_8

    const/4 p1, 0x0

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/efs/sdk/base/core/config/a/b;->a()Lcom/efs/sdk/base/core/config/a/b;

    move-result-object v0

    iget-object v4, p1, Lcom/efs/sdk/base/core/config/a/e;->a:Landroid/content/SharedPreferences;

    const-string v5, "cver"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/efs/sdk/base/core/config/a/b;->a:I

    iget-object v4, p1, Lcom/efs/sdk/base/core/config/a/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/efs/sdk/base/core/config/a/e;->a:Landroid/content/SharedPreferences;

    const-string v8, ""

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v5}, Lcom/efs/sdk/base/core/config/a/b;->a(Ljava/util/Map;)V

    move-object p1, v0

    :goto_2
    if-nez p1, :cond_b

    const-string p0, "first load local config false."

    invoke-static {v2, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/core/config/a/c;->a(Lcom/efs/sdk/base/core/config/a/b;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "current config to same."

    invoke-static {v2, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    iput-object p1, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget p1, p1, Lcom/efs/sdk/base/core/config/a/b;->a:I

    if-eq v3, p1, :cond_d

    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/a/c;->i()V

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/config/a/c;->d()V

    const-string p0, "load config from storage and notify observer"

    goto :goto_3

    :cond_d
    const-string p0, "load config from storage"

    :goto_3
    invoke-static {v2, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return v1
.end method
