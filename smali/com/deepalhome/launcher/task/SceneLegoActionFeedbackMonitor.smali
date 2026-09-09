.class public final Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;

.field public static volatile activeListener:Lkotlin/jvm/functions/Function1;

.field public static volatile activeTimeout:Ljava/lang/Runnable;

.field public static final executionResultListeners:Ljava/util/LinkedHashSet;

.field public static final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->mainHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->executionResultListeners:Ljava/util/LinkedHashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final observe$finish(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_3

    sget-object v2, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Pure EV Mode"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setPureElectricModeSceneValidated(Z)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setPureElectricModeWidgetSelected(Z)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setPureElectricModeSceneValidated(Z)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setPureElectricModeWidgetSelected(Z)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    :cond_3
    :goto_0
    sget-object v2, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->activeListener:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_c

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v3, v5, :cond_4

    monitor-exit v2

    return-void

    :cond_4
    :try_start_1
    sget-object v3, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    if-eqz p1, :cond_b

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, p1}, Lcom/deepalhome/launcher/util/LogcatUtil;->removeOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->mainHandler:Landroid/os/Handler;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p2, :cond_a

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-object v4, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->activeListener:Lkotlin/jvm/functions/Function1;

    sput-object v4, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->activeTimeout:Ljava/lang/Runnable;

    sget-object p1, Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;->SCENE_MISSING:Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p4, p1, :cond_5

    if-eqz p3, :cond_5

    move v0, v1

    :cond_5
    monitor-exit v2

    if-eqz p4, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "Pure EV Mode"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    monitor-enter v2

    :try_start_2
    sget-object p1, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->executionResultListeners:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    new-instance p2, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/16 v1, 0xa

    invoke-direct {p2, p1, p0, p4, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    new-instance p0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 p1, 0x1d

    invoke-direct {p0, p1, p3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_a
    :try_start_3
    const-string p0, "timeout"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_b
    const-string p0, "listener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_c
    const-string p0, "listener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v2

    throw p0
.end method
