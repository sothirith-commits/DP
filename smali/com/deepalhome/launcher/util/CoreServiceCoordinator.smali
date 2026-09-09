.class public final Lcom/deepalhome/launcher/util/CoreServiceCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/CoreServiceCoordinator;

.field public static volatile lastForegroundAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->INSTANCE:Lcom/deepalhome/launcher/util/CoreServiceCoordinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureServices(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->lastForegroundAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    sput-wide v0, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->lastForegroundAt:J

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getSignedAgreementVersion()I

    move-result v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getAppConfig()Lcom/deepalhome/launcher/config/appconfig/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->agreementConfig:Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;

    iget v0, v0, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;->agreementVersion:I

    if-ne v1, v0, :cond_7

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    const-string v1, "context"

    if-nez v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/service/LogcatMonitorService;->Companion:Lcom/deepalhome/launcher/service/LogcatMonitorService$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/deepalhome/launcher/service/LogcatMonitorService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keyFirstStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keyEndStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keyLongStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lcom/deepalhome/launcher/util/KeycodeUtil;->cleanUpListeners()V

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    sget-object v2, Lcom/deepalhome/launcher/util/KeycodeUtil;->keycodeLogcatListener:Lcom/deepalhome/launcher/util/KeycodeUtil$keycodeLogcatListener$1;

    sget-object v3, Lcom/deepalhome/launcher/util/KeycodeUtil;->LOGCAT_FILTER:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    invoke-virtual {v0, v2, v3}, Lcom/deepalhome/launcher/util/LogcatUtil;->addOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;)V

    sget-object v0, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->syncConfigFromSettings(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->startDaemonServiceIfNeeded(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/service/CarS05MonitorService;->Companion:Lcom/deepalhome/launcher/service/CarS05MonitorService$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/deepalhome/launcher/service/CarS05MonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->start()V

    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->ensureVisible(Landroid/content/Context;Z)V

    sget-object v1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->ensureVisible(Landroid/content/Context;Z)V

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->lastRefreshAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v6, v0, v2

    cmp-long v4, v6, v4

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->wallpaperViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager$cleanup$1;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager$cleanup$1;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->refreshFromLifecycle()V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "getApplicationContext(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->ensureServices(Landroid/content/Context;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "outState"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
