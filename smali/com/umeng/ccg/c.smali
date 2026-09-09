.class public final Lcom/umeng/ccg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static q:Landroid/os/HandlerThread;

.field public static r:Lcom/umeng/ccg/c$1;

.field public static s:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;J)V
    .locals 2

    if-eqz p0, :cond_6

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/umeng/ccg/c;->s:Ljava/util/HashMap;

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/umeng/ccg/c;->s:Ljava/util/HashMap;

    :cond_1
    div-int/lit8 p0, p1, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/umeng/ccg/c;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/umeng/ccg/c;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p0, Lcom/umeng/ccg/c;->q:Landroid/os/HandlerThread;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/umeng/ccg/c;->r:Lcom/umeng/ccg/c$1;

    if-nez p0, :cond_5

    :cond_3
    const-class p0, Lcom/umeng/ccg/c;

    monitor-enter p0

    :try_start_0
    sget-object p2, Lcom/umeng/ccg/c;->q:Landroid/os/HandlerThread;

    if-nez p2, :cond_4

    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "ccg_dispatch"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/umeng/ccg/c;->q:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    sget-object p2, Lcom/umeng/ccg/c;->r:Lcom/umeng/ccg/c$1;

    if-nez p2, :cond_4

    new-instance p2, Lcom/umeng/ccg/c$1;

    sget-object v0, Lcom/umeng/ccg/c;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/umeng/ccg/c$1;-><init>(Landroid/os/Looper;I)V

    sput-object p2, Lcom/umeng/ccg/c;->r:Lcom/umeng/ccg/c$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    monitor-exit p0

    :cond_5
    :try_start_1
    sget-object p0, Lcom/umeng/ccg/c;->r:Lcom/umeng/ccg/c$1;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 p2, 0x100

    iput p2, p0, Landroid/os/Message;->what:I

    iput p1, p0, Landroid/os/Message;->arg1:I

    iput-object p3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p1, Lcom/umeng/ccg/c;->r:Lcom/umeng/ccg/c$1;

    invoke-virtual {p1, p0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_6
    :goto_0
    return-void
.end method
