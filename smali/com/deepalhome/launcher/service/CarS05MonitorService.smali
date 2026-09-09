.class public final Lcom/deepalhome/launcher/service/CarS05MonitorService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/service/CarS05MonitorService$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/service/CarS05MonitorService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/service/CarS05MonitorService$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/service/CarS05MonitorService;->Companion:Lcom/deepalhome/launcher/service/CarS05MonitorService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 7

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v2, Landroid/app/NotificationChannel;

    const v3, 0x7f13040f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const-string v6, "car_s05_monitor"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080153

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x7f13040e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Landroidx/core/view/ContentInfoCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->watchdogRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->fastStatusPollRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->systemHvacPollRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->initialDoorSnapshotRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->infoDispatchRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->requestStartTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->unregisterVirtualCarCallbacks()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cleanupPolymericConnection(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->startMonitor()V

    const/4 p0, 0x1

    return p0
.end method
