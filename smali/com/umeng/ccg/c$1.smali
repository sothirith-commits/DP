.class public final Lcom/umeng/ccg/c$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/Looper;I)V
    .locals 0

    iput p2, p0, Lcom/umeng/ccg/c$1;->$r8$classId:I

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private final handleMessage$com$umeng$commonsdk$framework$UMWorkDispatch$1(Landroid/os/Message;)V
    .locals 7

    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x300

    const/4 v1, 0x0

    if-eq p0, v0, :cond_a

    const/16 v0, 0x310

    if-eq p0, v0, :cond_7

    const/16 v0, 0x302

    if-eq p0, v0, :cond_2

    const/16 v0, 0x303

    if-eq p0, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->eventType2ModuleName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    :cond_1
    if-eqz v1, :cond_c

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    invoke-interface {v1, p0, p1}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->workEvent(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    const-string p0, "exception"

    const-string p1, "--->>> autoProcess: Build envelope error code: "

    const-string v0, "MobclickRT"

    const-string v2, "--->>> delayProcess Enter..."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    if-eqz v2, :cond_c

    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v3

    sget-object v5, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    const-string v6, "analytics"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    goto :goto_0

    :cond_4
    move-object v5, v1

    :goto_0
    if-eqz v5, :cond_5

    :try_start_0
    invoke-interface {v5, v3, v4}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->setupReportData(J)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p0, "--->>> analyticsCB.setupReportData() return null"

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, "header"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_c

    if-eqz v1, :cond_c

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_c

    :try_start_1
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_6
    :try_start_2
    const-string p0, "--->>> autoProcess: removeCacheData ... "

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->removeCacheData(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v2, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    sget-object p0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    if-eqz p0, :cond_c

    sget-object p0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    if-eqz p0, :cond_c

    sget-object p0, Lcom/umeng/commonsdk/framework/a;->a:Landroid/os/HandlerThread;

    sget-object p0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    sget-object p0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    if-eqz p0, :cond_8

    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mNetTask:Landroid/os/HandlerThread;

    :cond_8
    sget-object p0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Lcom/umeng/ccg/c$1;

    if-eqz p0, :cond_9

    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mTaskHandler:Lcom/umeng/ccg/c$1;

    :cond_9
    sget-object p0, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    if-eqz p0, :cond_c

    sput-object v1, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->mSender:Lcom/umeng/commonsdk/framework/a;

    goto :goto_2

    :cond_a
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->eventType2ModuleName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v1, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    :cond_b
    if-eqz v1, :cond_c

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    invoke-interface {v1, p0, p1}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->workEvent(ILjava/lang/Object;)V

    :cond_c
    :goto_2
    return-void
.end method

.method private final handleMessage$com$umeng$commonsdk$framework$a$3(Landroid/os/Message;)V
    .locals 2

    iget p0, p1, Landroid/os/Message;->what:I

    const/16 p1, 0x111

    if-eq p0, p1, :cond_3

    const/16 p1, 0x112

    if-eq p0, p1, :cond_1

    const/16 p1, 0x200

    if-eq p0, p1, :cond_0

    goto :goto_3

    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/framework/a;->a:Landroid/os/HandlerThread;

    goto :goto_3

    :cond_1
    sget-object p0, Lcom/umeng/commonsdk/framework/a;->n:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/umeng/commonsdk/framework/a;->m:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    sget-object v1, Lcom/umeng/commonsdk/framework/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/CoreProtocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit p0

    goto :goto_3

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :try_start_1
    sget-object p0, Lcom/umeng/commonsdk/framework/a;->o:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :catchall_1
    sget-object p0, Lcom/umeng/commonsdk/framework/a;->o:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    :goto_3
    return-void
.end method

.method private final handleMessage$com$umeng$commonsdk$stateless$b$1(Landroid/os/Message;)V
    .locals 10

    const/4 p0, 0x1

    const/4 v0, 0x0

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x200

    if-eq p1, v1, :cond_14

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    :try_start_0
    new-instance p0, Ljava/io/File;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "MobclickRT"

    const-string p1, "--->>>2\u53f7\u6570\u636e\u4ed3\uff1a\u68c0\u6d4b\u5230stateless\u76ee\u5f55\u3002"

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x111

    invoke-static {p0}, Lcom/umeng/commonsdk/stateless/b;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    goto/16 :goto_11

    :pswitch_1
    sget-boolean p1, Lcom/umeng/commonsdk/stateless/b;->k:Z

    if-eqz p1, :cond_15

    sget-object p1, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    if-nez p1, :cond_0

    goto/16 :goto_12

    :cond_0
    :try_start_1
    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/umeng/commonsdk/stateless/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v2

    :goto_0
    move-object v3, v1

    goto :goto_4

    :catchall_0
    move-exception v3

    goto :goto_3

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/umeng/commonsdk/stateless/d$3;

    invoke-direct {v4}, Lcom/umeng/commonsdk/stateless/d$3;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception v3

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :goto_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3

    :goto_3
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {p1, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_4
    if-eqz v3, :cond_5

    sget-object p1, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_4
    array-length p1, v3

    move v2, v0

    :goto_5
    if-ge v2, p1, :cond_5

    aget-object v4, v3, v2

    sget-object v5, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, p0

    goto :goto_5

    :cond_5
    sget-object p1, Lcom/umeng/commonsdk/stateless/b;->l:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const-string v3, "MobclickRT"

    if-gtz v2, :cond_6

    const-string p0, "--->>> todoList\u65e0\u5185\u5bb9\uff0c\u65e0\u9700\u5904\u7406\u3002"

    invoke-static {v3, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_6
    invoke-virtual {p1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    const-string v4, "--->>> \u4fe1\u5c01\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u5904\u7406\u4e0b\u4e00\u4e2a\u6587\u4ef6\u3002"

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_7
    new-instance v5, Lcom/umeng/commonsdk/stateless/c;

    sget-object v6, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Lcom/umeng/commonsdk/stateless/c;-><init>(Landroid/content/Context;Z)V

    :try_start_a
    invoke-static {v2}, Lcom/umeng/commonsdk/stateless/d;->a(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_6

    :catch_0
    move-object v6, v1

    :goto_6
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v7, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_8
    const-string v8, "u"

    :goto_7
    invoke-static {v7}, Lcom/umeng/commonsdk/stateless/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_b
    new-instance v9, Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_8

    :catchall_3
    const-string v9, ""

    :goto_8
    sget v7, Lcom/umeng/commonsdk/vchannel/a;->$r8$clinit:I

    const-string v7, "explog"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "https://pslog.umeng.com"

    goto :goto_9

    :cond_9
    const-string v7, ""

    :goto_9
    invoke-virtual {v5, v6, v9, v7, v8}, Lcom/umeng/commonsdk/stateless/c;->a([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_a
    :goto_a
    if-nez v2, :cond_6

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :goto_b
    const/16 p0, 0x113

    invoke-static {p0}, Lcom/umeng/commonsdk/stateless/b;->b(I)V

    goto/16 :goto_12

    :pswitch_2
    const-string p0, "walle"

    sget-boolean p1, Lcom/umeng/commonsdk/stateless/b;->k:Z

    if-eqz p1, :cond_15

    sget-object p1, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    if-nez p1, :cond_b

    goto/16 :goto_12

    :cond_b
    :try_start_c
    sget-object p1, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Lcom/umeng/commonsdk/stateless/c;

    sget-object v3, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/umeng/commonsdk/stateless/c;-><init>(Landroid/content/Context;Z)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "umpx_internal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "umpx_crash"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "umpx_oplus_lbs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_d

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[stateless] handleProcessNext, pathUrl is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/stateless/d;->a(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception p0

    goto/16 :goto_f

    :catch_1
    move-object v4, v1

    :goto_c
    :try_start_e
    const-string v5, ""

    sget v6, Lcom/umeng/commonsdk/vchannel/a;->$r8$clinit:I

    const-string v6, "explog"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v5, "https://pslog.umeng.com"

    :cond_d
    const-string v6, "u"

    const-string v7, "umpx_share"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v6, "s"

    :cond_e
    const-string v7, "umpx_push_launch"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "umpx_push_register"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "umpx_push_logs"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    const-string v6, "p"

    :cond_10
    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/umeng/commonsdk/stateless/c;->a([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "[stateless] Send envelope file success, delete it."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "[stateless] Failed to delete already processed file. We try again after delete failed."

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_e

    :cond_11
    const-string p1, "[stateless] Send envelope file failed, abandon and wait next trigger!"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_12
    :goto_d
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_13
    :goto_e
    if-nez p1, :cond_b

    goto :goto_10

    :goto_f
    sget-object p1, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_10
    :try_start_f
    new-instance p0, Ljava/io/File;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "MobclickRT"

    const-string v0, "--->>> 2\u53f7\u6570\u636e\u4ed3\uff1a\u5220\u9664stateless\u76ee\u5f55\u3002"

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/commonsdk/stateless/d;->a(Ljava/io/File;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_12

    :catchall_5
    :cond_14
    :goto_11
    sget-object p0, Lcom/umeng/commonsdk/stateless/b;->b:Landroid/content/Context;

    :catchall_6
    :cond_15
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x111
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v6, p0

    iget v7, v6, Lcom/umeng/ccg/c$1;->$r8$classId:I

    packed-switch v7, :pswitch_data_0

    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v1, v6, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "type"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "appid"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v6, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->P:Lcom/umeng/commonsdk/stateless/c;

    invoke-virtual {v6, v1, v0}, Lcom/umeng/commonsdk/stateless/c;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_9

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "VMS_SDK_Client"

    const-string v1, "get guid failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "VMS_SDK_Client"

    const-string v1, "get udid failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->J:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "VMS_SDK_Client"

    const-string v1, "get aaid failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->J:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->c(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->I:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v0, "VMS_SDK_Client"

    const-string v1, "get vaid failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->I:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->c(ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->H:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->c(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v1, "VMS_SDK_Client"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    const-string v0, "VMS_SDK_Client"

    const-string v1, "message type valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/umeng/ccg/c$1;->handleMessage$com$umeng$commonsdk$stateless$b$1(Landroid/os/Message;)V

    return-void

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/umeng/ccg/c$1;->handleMessage$com$umeng$commonsdk$framework$a$3(Landroid/os/Message;)V

    return-void

    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/umeng/ccg/c$1;->handleMessage$com$umeng$commonsdk$framework$UMWorkDispatch$1(Landroid/os/Message;)V

    return-void

    :pswitch_3
    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x100

    if-eq v6, v7, :cond_b

    goto/16 :goto_11

    :cond_b
    iget v6, v0, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    div-int/lit8 v7, v6, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/umeng/ccg/c;->s:Ljava/util/HashMap;

    if-nez v8, :cond_c

    goto/16 :goto_11

    :cond_c
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    sget-object v8, Lcom/umeng/ccg/c;->s:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/ccg/c$a;

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_24

    check-cast v7, Lcom/umeng/ccg/d;

    const-string v8, "manual check iucc value: "

    const-string v10, "[imprint] send request. body: "

    const-string v11, "manual check iucc value: "

    const-string v12, "[IMPRINT_IUCC_CHANGED] iucc : "

    const-string v13, "Ignoring this collection item ["

    const-string v14, "Local switch of ["

    const-string v15, "recv START_COLLECT msg. name is : "

    const-string v1, "screen_on event param: "

    const-string v2, "screen_off event param: "

    const-string v9, "screen_unlock event param: "

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    goto/16 :goto_11

    :pswitch_4
    const-string v0, "MobclickRT"

    const-string v1, "recv REPORT_SCREEN_UNLOCK msg."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    const-string v0, "screen_unlock"

    invoke-static {v0}, Lcom/umeng/ccg/d;->b(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/umeng/ccg/d;->i:Ljava/util/HashMap;

    const-string v1, "screen_unlock"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v7, Lcom/umeng/ccg/d;->i:Ljava/util/HashMap;

    const-string v1, "screen_unlock"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/ccg/d$a;

    if-eqz v0, :cond_24

    sget-object v1, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v1, v1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/umeng/ccg/d$a;->b:Lorg/json/JSONArray;

    iget-object v0, v0, Lcom/umeng/ccg/d$a;->c:Ljava/lang/String;

    invoke-static {v1, v4, v2, v0}, Lcom/umeng/analytics/pro/al;->a(Landroid/content/Context;ILorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lme/wcy/lrcview/LrcView$5;

    invoke-direct {v1, v0}, Lme/wcy/lrcview/LrcView$5;-><init>(Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/ar;->a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    goto/16 :goto_11

    :pswitch_5
    const-string v0, "MobclickRT"

    const-string v1, "recv REPORT_SCREEN_OFF msg."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    const-string v0, "screen_off"

    invoke-static {v0}, Lcom/umeng/ccg/d;->b(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/umeng/ccg/d;->i:Ljava/util/HashMap;

    const-string v1, "screen_off"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v7, Lcom/umeng/ccg/d;->i:Ljava/util/HashMap;

    const-string v1, "screen_off"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/ccg/d$a;

    if-eqz v0, :cond_24

    sget-object v1, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v1, v1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/umeng/ccg/d$a;->b:Lorg/json/JSONArray;

    iget-object v0, v0, Lcom/umeng/ccg/d$a;->c:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0}, Lcom/umeng/analytics/pro/al;->a(Landroid/content/Context;ILorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lme/wcy/lrcview/LrcView$5;

    invoke-direct {v1, v0}, Lme/wcy/lrcview/LrcView$5;-><init>(Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/ar;->a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    goto/16 :goto_11

    :pswitch_6
    const-string v0, "MobclickRT"

    const-string v2, "recv REPORT_SCREEN_ON msg."

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    const-string v0, "screen_on"

    invoke-static {v0}, Lcom/umeng/ccg/d;->b(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/umeng/ccg/d;->i:Ljava/util/HashMap;

    const-string v2, "screen_on"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v7, Lcom/umeng/ccg/d;->i:Ljava/util/HashMap;

    const-string v2, "screen_on"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/ccg/d$a;

    if-eqz v0, :cond_24

    sget-object v2, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v2, v2, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/umeng/ccg/d$a;->b:Lorg/json/JSONArray;

    iget-object v0, v0, Lcom/umeng/ccg/d$a;->c:Ljava/lang/String;

    invoke-static {v2, v5, v3, v0}, Lcom/umeng/analytics/pro/al;->a(Landroid/content/Context;ILorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lme/wcy/lrcview/LrcView$5;

    invoke-direct {v1, v0}, Lme/wcy/lrcview/LrcView$5;-><init>(Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/ar;->a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V

    goto/16 :goto_11

    :pswitch_7
    if-eqz v0, :cond_24

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_24

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "actionName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/ccg/b;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    sget-object v3, Lcom/umeng/ccg/b;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_e
    :goto_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v5, :cond_f

    :try_start_6
    const-string v0, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is off, ignore this command."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/umeng/ccg/d;->d:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v0, "screen_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MobclickRT"

    const-string v2, "register Intent.ACTION_SCREEN_ON"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "android.intent.action.SCREEN_ON"

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/ccg/d;->j:Lcom/umeng/ccg/d$c;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_10
    const-string v0, "screen_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MobclickRT"

    const-string v2, "register Intent.ACTION_SCREEN_OFF"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "android.intent.action.SCREEN_OFF"

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/ccg/d;->j:Lcom/umeng/ccg/d$c;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_11
    const-string v0, "screen_unlock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "MobclickRT"

    const-string v1, "register Intent.ACTION_USER_PRESENT"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    const-string v1, "android.intent.action.USER_PRESENT"

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/ccg/d;->j:Lcom/umeng/ccg/d$c;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_11

    :cond_12
    invoke-static {v1}, Lcom/umeng/ccg/d;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/umeng/ccg/CcgAgent;->hasRegistedActionInfo()Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "anti"

    invoke-static {v3}, Lcom/umeng/ccg/CcgAgent;->getActionInfo(Ljava/lang/String;)V

    const-string v3, "local_hit_sdk"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {v0}, Lcom/umeng/ccg/CcgAgent;->getActionInfo(Ljava/lang/String;)V

    goto :goto_7

    :cond_13
    const-string v0, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u91c7\u96c6\u8bf7\u6c42."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    sget-object v0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_14
    sget-object v0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto/16 :goto_11

    :goto_8
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :pswitch_8
    const-string v1, "MobclickRT"

    const-string v2, "recv COLLECTION_JUDGMENT msg."

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_24

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_24

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/pro/z;

    iget-object v4, v3, Lcom/umeng/analytics/pro/z;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/umeng/analytics/pro/z;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_16

    sget-object v4, Lcom/umeng/ccg/d;->d:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v3, v3, Lcom/umeng/analytics/pro/z;->a:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "delay"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v3, v6

    :goto_a
    move-wide v10, v3

    goto :goto_b

    :cond_15
    const-wide/16 v3, 0x0

    goto :goto_a

    :goto_b
    const-string v3, "delay"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "MobclickRT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send START_COLLECT msg, delayTs = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v6, v3, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    sget-object v8, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    const/16 v7, 0xcb

    invoke-static/range {v6 .. v11}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;J)V

    :cond_16
    add-int/2addr v2, v5

    goto :goto_9

    :pswitch_9
    const-string v1, "MobclickRT"

    const-string v2, "recv PARSE_CONFIG msg."

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_24

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_24

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v7, v0}, Lcom/umeng/ccg/d;->c(Lorg/json/JSONObject;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto/16 :goto_11

    :pswitch_a
    if-eqz v0, :cond_24

    :try_start_9
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_24

    check-cast v0, Ljava/lang/String;

    const-string v1, "MobclickRT"

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    const-string v1, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[imprint] process error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_b
    if-eqz v0, :cond_24

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_24

    :try_start_a
    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    and-int/2addr v1, v5

    if-eqz v1, :cond_17

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/umeng/ccg/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/umeng/ccg/CcgAgent;->notifyConfigReady(Lorg/json/JSONObject;)V

    goto :goto_c

    :cond_17
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/ccg/CcgAgent;->notifyConfigReady(Lorg/json/JSONObject;)V

    :cond_18
    :goto_c
    invoke-static {}, Lcom/umeng/ccg/d;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "MobclickRT"

    const-string v1, "--->>> \u68c0\u6d4b\u5230\u96c6\u6210\u7684SDK\u7c7b\u578b\u96c6\u5408\u53d1\u751f\u53d8\u5316\uff0c\u53d1\u8d77\u4e91\u914d\u53c2\u6570\u62c9\u53d6\u8bf7\u6c42(\u8bbe\u7f6e\u672c\u5730should fetch\u6807\u5fd7)."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "iucc"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/umeng/ccg/d;->a(Z)V

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    const/16 v3, 0x65

    invoke-static {v0, v3, v2, v1}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_19
    sget-object v0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v1

    new-instance v2, Lcom/umeng/ccg/d$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "iucc"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    const-string v1, "iucc"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto/16 :goto_11

    :pswitch_c
    sget-object v0, Lcom/umeng/ccg/CcgAgent;->lock:Ljava/lang/Object;

    const-string v0, "col_wifi"

    const-string v1, "col_bs"

    const-string v2, "col_apl"

    const-string v3, "col_lbs"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    :goto_d
    if-ge v1, v2, :cond_1b

    aget-object v3, v0, v1

    sget-object v4, Lcom/umeng/ccg/CcgAgent;->forbidSdkTable:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    goto :goto_e

    :cond_1a
    const/4 v4, 0x0

    :goto_e
    const-string v6, "MobclickRT"

    const-string v7, "[forbid_sdk] \u91c7\u96c6\u9879: "

    const-string v8, "; \u503c: "

    invoke-static {v7, v3, v8}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v1, v5

    goto :goto_d

    :cond_1b
    const-string v0, "MobclickRT"

    const-string v1, "[workEvent]: recv LOAD_CONFIG msg."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x6a

    :try_start_b
    sget-object v2, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v2, v2, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/ccg/d;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v9, :cond_1d

    :try_start_c
    invoke-static {v9}, Lcom/umeng/ccg/d;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_f

    :cond_1c
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string v3, "result"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v9, :cond_1e

    const-string v1, "config"

    invoke-virtual {v2, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    :cond_1e
    sget-object v1, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v1, v1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    :goto_10
    sget-object v3, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    invoke-static {v1, v0, v3, v2}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;)V

    goto/16 :goto_11

    :catchall_4
    const/4 v9, 0x0

    :catchall_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_e
    const-string v3, "result"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v9, :cond_1f

    const-string v1, "config"

    invoke-virtual {v2, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    :cond_1f
    sget-object v1, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v1, v1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    goto :goto_10

    :pswitch_d
    const-string v0, "MobclickRT"

    const-string v1, "[workEvent]: recv FETCH_FAILED msg."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_e
    const-string v1, "MobclickRT"

    const-string v2, "[workEvent]: recv FETCH_SUCCESS msg."

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v1, v1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_24

    :try_start_f
    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "sourceIucc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_24

    invoke-static {}, Lcom/umeng/ccg/d;->g()Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "MobclickRT"

    const-string v4, "--->>> \u6210\u529f\u62c9\u53d6\u4e91\u914d\u53c2\u6570\u540e\uff0c\u68c0\u6d4b\u5230should fetch\u6807\u5fd7\uff0c\u6e05\u9664\u6b64\u6807\u5fd7\u3002\u66f4\u65b0SDK\u7c7b\u578b\u96c6\u7f13\u5b58\u503c"

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/umeng/ccg/d;->f()V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/umeng/ccg/d;->a(Z)V

    :cond_20
    invoke-static {v1, v2, v0}, Lcom/umeng/ccg/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_11

    :pswitch_f
    const-string v1, "MobclickRT"

    const-string v2, "[workEvent]: recv FETCH_RESPONSE msg."

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    iput-object v1, v7, Lcom/umeng/ccg/d;->h:Ljava/lang/String;

    const/16 v1, 0x68

    if-eqz v0, :cond_22

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_22

    :try_start_10
    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/ccg/d;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v1, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v1, v1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    const/16 v3, 0x67

    invoke-static {v1, v3, v2, v0}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_21
    sget-object v0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto/16 :goto_11

    :cond_22
    sget-object v0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_10
    if-eqz v0, :cond_24

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_24

    check-cast v0, Ljava/lang/String;

    const-string v1, "MobclickRT"

    const-string v2, "[workEvent]: recv FETCH_NEW_CONFIG msg. source iucc is: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object v2, v1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/analytics/pro/al;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_23

    :try_start_11
    const-string v3, "MobclickRT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/umeng/analytics/pro/ao;

    const-string v4, "https://ucc.umeng.com/v2/inn/fetch"

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/umeng/analytics/pro/ao;-><init>(I)V

    iput-object v4, v3, Lcom/umeng/analytics/pro/ao;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/umeng/analytics/pro/ao;->c:Ljava/lang/Object;

    iput-object v0, v3, Lcom/umeng/analytics/pro/ao;->d:Ljava/lang/Object;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v0}, Lcom/umeng/analytics/pro/ar;->a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V

    :cond_23
    invoke-static {}, Lcom/umeng/ccg/d;->g()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v0

    new-instance v2, Lcom/umeng/ccg/d$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "iucc"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    iget-object v0, v1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    const-string v1, "iucc"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_7
    :cond_24
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc9
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12d
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
