.class public final synthetic Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "vc_alias_ac_internal_temp"

    const v1, 0x38600112

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget p0, p0, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->showWindow()V

    return-void

    :pswitch_0
    const-string p0, "MapIntentRouter"

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/LauncherUtil;->Companion:Lcom/deepalhome/launcher/util/LauncherUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/deepalhome/launcher/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    const-string v1, "[S05] \u5df2\u5728\u5ef6\u65f6\u540e\u56de\u5230\u672c\u8f6f\u4ef6"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[S05] \u5ef6\u65f6\u56de\u5230\u672c\u8f6f\u4ef6\u5931\u8d25 error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    sget-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->bindVirtualCarPropertyManager()V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->refreshVirtualCarDoorSnapshot(Lcom/openos/virtualcar/VirtualCarPropertyManager;)V

    :goto_1
    return-void

    :pswitch_2
    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    sget-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->pollSystemHvacState()V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleSystemHvacPoll()V

    :goto_2
    return-void

    :pswitch_3
    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    sget-boolean v5, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-nez v5, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_9

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->bindVirtualCarPropertyManager()V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->registerVirtualCarCallbacks()V

    sget-object v5, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const-string v7, "getApp(...)"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x294034b7

    const/4 v7, 0x4

    invoke-static {v6, v5, v7}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->getIntProperty(Landroid/app/Application;II)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    const-string v2, "0"

    goto :goto_5

    :cond_6
    :goto_3
    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    const-string v2, "1"

    goto :goto_5

    :cond_8
    :goto_4
    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_a

    const-string v2, "2"

    :cond_a
    :goto_5
    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->currentEnergyManagementMode:Ljava/lang/Integer;

    if-nez v7, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_d

    sget-object v7, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getEnergyManagementMode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_7

    :cond_d
    :goto_6
    sput-object v5, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->currentEnergyManagementMode:Ljava/lang/Integer;

    sget-object v5, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v7, Lcom/deepalhome/launcher/util/CarS05InfoUtil$updateS05EnergyManagementMode$1;

    invoke-direct {v7, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$updateS05EnergyManagementMode$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setPureElectricModeWidgetSelected(Z)V

    :cond_e
    sget-object v2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->notifyListeners(Ljava/util/Set;)V

    :cond_f
    :goto_7
    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->refreshVirtualCarSnapshot(Z)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->bindVirtualCarPropertyManager()V

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-nez p0, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {p0, v1, v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8
    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->hasMissingPsOnlyData()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->fetchPsOnlyData()V

    :cond_11
    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleFastStatusPoll()V

    :goto_9
    return-void

    :pswitch_4
    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    sget-boolean v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-nez v2, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_b

    :cond_12
    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->refreshVirtualCarSnapshot(Z)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->bindVirtualCarPropertyManager()V

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-nez v2, :cond_13

    goto :goto_a

    :cond_13
    invoke-static {v2, v1, v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a
    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->hasMissingPsOnlyData()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->fetchPsOnlyData()V

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastSystemHvacAt:J

    sub-long v2, v0, v2

    const-wide/16 v5, 0xbb8

    cmp-long v2, v2, v5

    if-ltz v2, :cond_15

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->pollSystemHvacState()V

    :cond_15
    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isBinderAlive()Z

    move-result p0

    if-nez p0, :cond_16

    invoke-static {v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectPolymericService(Z)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleWatchdog()V

    goto :goto_b

    :cond_16
    sget-wide v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastEventAt:J

    sget-wide v5, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastRefreshAt:J

    sget-wide v7, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastConnectAt:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long p0, v2, v5

    if-lez p0, :cond_17

    sub-long v2, v0, v2

    const-wide/32 v5, 0x1d4c0

    cmp-long p0, v2, v5

    if-ltz p0, :cond_17

    sget-wide v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastForceReconnectAt:J

    sub-long v2, v0, v2

    cmp-long p0, v2, v5

    if-ltz p0, :cond_17

    sput-wide v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastForceReconnectAt:J

    invoke-static {v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectPolymericService(Z)V

    :cond_17
    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleWatchdog()V

    :goto_b
    return-void

    :pswitch_5
    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectPolymericService(Z)V

    return-void

    :pswitch_6
    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    return-void

    :cond_18
    :pswitch_7
    move p0, v3

    :goto_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_24

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_24

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "logcat"

    :try_start_1
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v5, "-c"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v1

    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    :goto_e
    move v0, v3

    goto/16 :goto_14

    :cond_1a
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v5, "-v"

    const-string v6, "time"

    filled-new-array {v0, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_f

    :catchall_2
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_f
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_1b

    move-object v0, v2

    :cond_1b
    check-cast v0, Ljava/lang/Process;

    if-nez v0, :cond_1c

    goto :goto_e

    :cond_1c
    sput-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->logcatProcess:Ljava/lang/Process;

    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move v5, v3

    :cond_1d
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v6, :cond_21

    :try_start_5
    sget v6, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_10

    :catchall_3
    move-exception v6

    :try_start_6
    sget v7, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v6

    :goto_10
    instance-of v7, v6, Lkotlin/Result$Failure;

    if-eqz v7, :cond_1e

    move-object v6, v2

    :cond_1e
    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1f

    goto :goto_12

    :cond_1f
    add-int/2addr v5, v4

    sget-object v7, Lcom/deepalhome/launcher/util/LogcatUtil;->listenerRegistrations:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_20
    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerRegistration;

    iget-object v9, v8, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerRegistration;->filter:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    invoke-virtual {v9, v6}, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;->matches$app_release(Ljava/lang/String;)Z

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v9, :cond_20

    :try_start_7
    sget v9, Lkotlin/Result;->$r8$clinit:I

    iget-object v8, v8, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerRegistration;->listener:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_11

    :catchall_4
    move-exception v8

    :try_start_8
    sget v9, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v8}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    goto :goto_11

    :catchall_5
    move-exception p0

    goto :goto_15

    :cond_21
    :goto_12
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_13

    :catchall_6
    move-exception v1

    sget v6, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_13
    sget-object v1, Lcom/deepalhome/launcher/util/LogcatUtil;->logcatProcess:Ljava/lang/Process;

    if-ne v1, v0, :cond_22

    sput-object v2, Lcom/deepalhome/launcher/util/LogcatUtil;->logcatProcess:Ljava/lang/Process;

    :cond_22
    const/16 v0, 0x64

    if-le v5, v0, :cond_19

    move v0, v4

    :goto_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_24

    if-nez v0, :cond_18

    add-int/2addr p0, v4

    const-wide/16 v0, 0x7d0

    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_c

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_18

    :catchall_7
    move-exception p0

    goto :goto_16

    :goto_15
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception v3

    :try_start_d
    invoke-static {v1, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :goto_16
    :try_start_e
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_17

    :catchall_9
    move-exception v1

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_17
    sget-object v1, Lcom/deepalhome/launcher/util/LogcatUtil;->logcatProcess:Ljava/lang/Process;

    if-ne v1, v0, :cond_23

    sput-object v2, Lcom/deepalhome/launcher/util/LogcatUtil;->logcatProcess:Ljava/lang/Process;

    :cond_23
    throw p0

    :cond_24
    :goto_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
