.class public final Lme/wcy/lrcview/LrcView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/LrcView$5;->$r8$classId:I

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lme/wcy/lrcview/LrcView$5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lme/wcy/lrcview/LrcView$5;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    sget v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->R:I

    sget v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->S:I

    add-int/2addr v0, v1

    sget v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->X:I

    add-int/2addr v0, v1

    sget v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->aa:I

    add-int/2addr v0, v1

    sget v3, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->T:I

    sget v4, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->U:I

    add-int/2addr v3, v4

    sget v4, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->Z:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    sget v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->V:I

    sget v4, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->W:I

    add-int/2addr v1, v4

    sget v4, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->ab:I

    add-int/2addr v1, v4

    sget v4, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->ac:I

    add-int/2addr v1, v4

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    sget v3, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->R:I

    sget v4, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->S:I

    sget v5, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->X:I

    sget v6, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->Y:I

    invoke-static {v1, v3, v4, v5, v6}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Lorg/repackage/com/vivo/identifier/IdentifierIdClient;IIII)Ljava/lang/String;

    move-result-object v1

    const-string v3, "oaid"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    sget v3, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->T:I

    sget v4, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->U:I

    sget v5, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->Z:I

    sget v6, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->aa:I

    invoke-static {v1, v3, v4, v5, v6}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Lorg/repackage/com/vivo/identifier/IdentifierIdClient;IIII)Ljava/lang/String;

    move-result-object v1

    const-string v3, "vaid"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    sget v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->V:I

    sget v3, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->W:I

    sget v4, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->ab:I

    sget v5, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->ac:I

    invoke-static {p0, v1, v3, v4, v5}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Lorg/repackage/com/vivo/identifier/IdentifierIdClient;IIII)Ljava/lang/String;

    move-result-object p0

    const-string v1, "aaid"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0}, [Landroid/content/ContentValues;

    move-result-object p0

    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->P:Lcom/umeng/commonsdk/stateless/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "VMS_SDK_DB"

    const-string v3, "insert:"

    const-string v4, "content://com.vivo.vms.IdProvider/IdentifierId/STATISTICS_vivo"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "return insert is error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->W:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->V:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->U:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->T:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->S:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->R:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->ac:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->ab:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->aa:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->Z:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->Y:I

    sput v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->X:I

    :cond_1
    return-void

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/concurrent/TaskRunner;

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v0, v1, Lokhttp3/internal/concurrent/Task;->queue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/concurrent/TaskRunner;

    sget-object v3, Lokhttp3/internal/concurrent/TaskRunner;->Companion:Lokhttp3/internal/concurrent/TaskRunner$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lokhttp3/internal/concurrent/TaskRunner;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v4, v0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    iget-object v4, v4, Lokhttp3/internal/concurrent/TaskRunner;->backend:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-string v6, "starting"

    invoke-static {v1, v0, v6}, Lkotlin/io/TextStreamsKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-wide/16 v4, -0x1

    :goto_2
    :try_start_2
    invoke-static {v2, v1}, Lokhttp3/internal/concurrent/TaskRunner;->access$runTask(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    iget-object v2, v0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    iget-object v2, v2, Lokhttp3/internal/concurrent/TaskRunner;->backend:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/io/TextStreamsKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "finished run in "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lkotlin/io/TextStreamsKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception v6

    :try_start_4
    iget-object v2, v2, Lokhttp3/internal/concurrent/TaskRunner;->backend:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    if-eqz v3, :cond_5

    iget-object v2, v0, Lokhttp3/internal/concurrent/TaskQueue;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    iget-object v2, v2, Lokhttp3/internal/concurrent/TaskRunner;->backend:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/io/TextStreamsKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed a run in "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lkotlin/io/TextStreamsKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    :cond_5
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_1
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/umeng/analytics/pro/m;

    iget-boolean v3, p0, Lcom/umeng/analytics/pro/m;->c:Z

    const-string v4, "MobclickRT"

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/umeng/analytics/pro/m;->d:Z

    if-eqz v3, :cond_9

    iput-boolean v2, p0, Lcom/umeng/analytics/pro/m;->c:Z

    const-string v3, "--->>> went background."

    invoke-static {v4, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v3, p0, Lcom/umeng/analytics/pro/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    iget-object v3, p0, Lcom/umeng/analytics/pro/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/pro/n;

    check-cast v3, Lcom/umeng/analytics/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "--->>> onIntoBackground triggered."

    invoke-static {v4, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    sget-object v3, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    sget-boolean v5, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    const-string v3, "header_ekv_send_on_exit"

    invoke-static {v3}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x2012

    invoke-static {v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "--->>> Exit send strategy triggered!"

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v6

    invoke-static {v5, v3, v6, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    const-string v3, "--->>> Exit sending strategy: Cloud control switch is off. Function is not active."

    invoke-static {v4, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    add-int/2addr v2, v0

    goto :goto_4

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :cond_9
    const-string p0, "--->>> still foreground."

    invoke-static {v4, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void

    :pswitch_2
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    :try_start_7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v0, "https://aspect-upush.umeng.com/occa/v1/event/report"

    invoke-static {v0, p0}, Lcom/umeng/analytics/pro/am;->b(Ljava/lang/String;[B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    :cond_b
    return-void

    :pswitch_3
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;

    invoke-direct {v0, v2, p0, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;-><init>(ILcom/scwang/smart/refresh/layout/SmartRefreshLayout;Z)V

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/openos/ConnectionServiceMonitor;

    :try_start_8
    iget-object v1, v0, Lcom/openos/ConnectionServiceMonitor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v3, v0, Lcom/openos/ConnectionServiceMonitor;->mServiceNeedConnected:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openos/servicemanage/ServiceBase;

    invoke-virtual {v4}, Lcom/openos/servicemanage/ServiceBase;->isServiceConnected()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    iput-object v2, v0, Lcom/openos/ConnectionServiceMonitor;->mServiceNeedConnected:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, v0, Lcom/openos/ConnectionServiceMonitor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, v0, Lcom/openos/ConnectionServiceMonitor;->mServiceNeedConnected:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openos/servicemanage/ServiceBase;

    invoke-virtual {v3}, Lcom/openos/servicemanage/ServiceBase;->connectService()V

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_8

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    iget-object v0, v0, Lcom/openos/ConnectionServiceMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    return-void

    :pswitch_5
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;

    invoke-virtual {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->onCancel()V

    invoke-virtual {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->onDone()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/magical/MagicalView;

    iget-object v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/ChangeBounds;

    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/ChangeTransform;

    invoke-direct {v3}, Landroid/transition/ChangeTransform;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/ChangeImageTransform;

    invoke-direct {v3}, Landroid/transition/ChangeImageTransform;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->onMagicalViewCallback:Lcom/luck/picture/lib/magical/OnMagicalViewCallback;

    check-cast v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean v2, v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    if-eqz v2, :cond_10

    iget v2, v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/2addr v2, v0

    goto :goto_9

    :cond_10
    iget v2, v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    :goto_9
    invoke-static {v2}, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->getItemViewParams(I)Lcom/luck/picture/lib/magical/ViewParams;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_a

    :cond_11
    iget-object v3, v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_a

    :cond_12
    iget-object v1, v1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v2, Lcom/luck/picture/lib/magical/ViewParams;->width:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v2, v2, Lcom/luck/picture/lib/magical/ViewParams;->height:I

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_a
    iget-object v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->contentLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/luck/picture/lib/magical/MagicalView;->magicalWrapper:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView$1;->setWidth(F)V

    iget v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginHeight:I

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView$1;->setHeight(F)V

    iget v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginTop:I

    iget-object v3, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginLeft:I

    iget-object v3, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/magical/MagicalView;->changeBackgroundViewAlpha(Z)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-static {p0}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->access$001(Lcom/luck/picture/lib/dialog/AlbumListPopWindow;)V

    iput-boolean v2, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->isDismiss:Z

    return-void

    :pswitch_8
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    iget-object v1, v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/luck/picture/lib/utils/DateUtils;->formatDurationTime(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v5, 0x3e8

    if-nez v4, :cond_14

    iget-object v4, v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->tvCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-lez v3, :cond_13

    iget-object v3, v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    long-to-int v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_b

    :cond_13
    iget-object v3, v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->seekBar:Landroid/widget/SeekBar;

    iget-object v4, v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_14
    :goto_b
    rem-long/2addr v1, v5

    sub-long/2addr v5, v1

    iget-object v0, v0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_9
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v3, v0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le p0, v3, :cond_15

    goto :goto_c

    :cond_15
    iget-object v0, v0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    :goto_c
    iget p0, v1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    iget-object v0, v2, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    if-nez p0, :cond_16

    iget p0, v1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    if-nez p0, :cond_16

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_d

    :cond_16
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_17
    :goto_d
    return-void

    :pswitch_a
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lme/wcy/lrcview/LrcView;

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v0, :cond_18

    iput-boolean v2, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    iget v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    iget-wide v1, p0, Lme/wcy/lrcview/LrcView;->mAnimationDuration:J

    invoke-virtual {p0, v0, v1, v2}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
