.class public final Lcom/umeng/commonsdk/framework/UMWorkDispatch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mNetTask:Landroid/os/HandlerThread;

.field public static mSender:Lcom/umeng/commonsdk/framework/a;

.field public static final mSenderInitLock:Ljava/lang/Object;

.field public static mTaskHandler:Lcom/umeng/ccg/c$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSenderInitLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized eventHasExist()Z
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Lcom/umeng/ccg/c$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v2, 0x303

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized eventHasExist(I)Z
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Lcom/umeng/ccg/c$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static registerConnStateObserver(Lcom/umeng/analytics/CoreProtocol;)V
    .locals 3

    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/umeng/commonsdk/framework/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/a;->m:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/framework/a;->m:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/umeng/commonsdk/framework/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/umeng/commonsdk/framework/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_1

    const-string p0, "MobclickRT"

    const-string v1, "--->>> addConnStateObserver: input item has exist."

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :try_start_2
    sget-object v1, Lcom/umeng/commonsdk/framework/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_4
    :goto_5
    return-void
.end method

.method public static sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    .locals 7

    const/16 v1, 0x300

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    return-void
.end method

.method public static sendEventInternal(Landroid/content/Context;IILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    .locals 3

    if-eqz p0, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    :cond_2
    invoke-static {p2}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->eventType2ModuleName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    if-eqz p3, :cond_4

    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Lcom/umeng/ccg/c$1;

    if-nez p3, :cond_6

    :cond_4
    const-class p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;

    monitor-enter p3

    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "work_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Lcom/umeng/ccg/c$1;

    if-nez v0, :cond_5

    new-instance v0, Lcom/umeng/ccg/c$1;

    sget-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/umeng/ccg/c$1;-><init>(Landroid/os/Looper;I)V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Lcom/umeng/ccg/c$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_5
    :goto_0
    monitor-exit p3

    :cond_6
    :try_start_2
    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Lcom/umeng/ccg/c$1;

    if-eqz p3, :cond_9

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_8

    sget-object p3, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSenderInitLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->syncLegacyEnvelopeIfNeeded(Landroid/content/Context;)V

    new-instance v0, Lcom/umeng/commonsdk/framework/a;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/framework/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_7
    :goto_1
    monitor-exit p3

    goto :goto_3

    :goto_2
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_8
    :goto_3
    sget-object p0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Lcom/umeng/ccg/c$1;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    iput p1, p0, Landroid/os/Message;->what:I

    iput p2, p0, Landroid/os/Message;->arg1:I

    iput-object p4, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Lcom/umeng/ccg/c$1;

    invoke-virtual {p1, p0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :goto_4
    sget-object p1, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    return-void

    :catchall_3
    move-exception p0

    monitor-exit p3

    throw p0

    :cond_a
    :goto_6
    return-void
.end method
