.class public final Lcom/deepalhome/launcher/util/LogcatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADB_WIFI_PORT_PATTERN:Ljava/util/regex/Pattern;

.field public static final INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

.field public static final adbWifiLogListener:Lcom/deepalhome/launcher/util/LogcatUtil$adbWifiLogListener$1;

.field public static volatile lastAdbWifiPortEvent:Lcom/deepalhome/launcher/util/LogcatUtil$AdbWifiPortEvent;

.field public static volatile lastBroadcastPort:Ljava/lang/String;

.field public static final listenerRegistrations:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static volatile logcatProcess:Ljava/lang/Process;

.field public static readThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/LogcatUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/LogcatUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    const-string v0, "adb wifi started on port (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->ADB_WIFI_PORT_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->listenerRegistrations:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil$adbWifiLogListener$1;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil$adbWifiLogListener$1;

    sput-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->adbWifiLogListener:Lcom/deepalhome/launcher/util/LogcatUtil$adbWifiLogListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasPermission()Z
    .locals 6

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "android.permission.READ_LOGS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/luck/picture/lib/utils/SpUtils;->pictureSpUtils:Landroid/content/SharedPreferences;

    if-nez v2, :cond_2

    const-string v2, "PictureSpUtils"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/utils/SpUtils;->pictureSpUtils:Landroid/content/SharedPreferences;

    :cond_2
    sget-object v0, Lcom/luck/picture/lib/utils/SpUtils;->pictureSpUtils:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    :goto_0
    if-ne v0, v5, :cond_4

    move v4, v5

    :cond_4
    return v4

    :cond_5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/LogcatUtil;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static hasPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "android.permission.READ_LOGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRunning()Z
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->readThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final declared-synchronized addOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "filter"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;->keywords:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/io/LinesSequence;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/LogcatUtil$addOnLogcatPrintListener$normalizedFilter$1;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil$addOnLogcatPrintListener$normalizedFilter$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/DistinctSequence;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/LogcatUtil$addOnLogcatPrintListener$normalizedFilter$2;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil$addOnLogcatPrintListener$normalizedFilter$2;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toCollection(Lkotlin/sequences/Sequence;Ljava/util/AbstractCollection;)Ljava/util/Collection;

    iget-object p2, p2, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;->predicate:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    invoke-direct {v0, v1, p2}, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerRegistration;

    invoke-direct {p2, p1, v0}, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerRegistration;-><init>(Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->listenerRegistrations:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerRegistration;

    iget-object v2, v2, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerRegistration;->listener:Lkotlin/jvm/functions/Function1;

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/util/LogcatUtil;->listenerRegistrations:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object p1, Lcom/deepalhome/launcher/util/LogcatUtil;->listenerRegistrations:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->listenerRegistrations:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerRegistration;

    iget-object v2, v2, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerRegistration;->listener:Lkotlin/jvm/functions/Function1;

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/util/LogcatUtil;->listenerRegistrations:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized start()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/LogcatUtil;->stop()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v2, "LogcatReader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sput-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->readThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->logcatProcess:Ljava/lang/Process;

    const/4 v1, 0x0

    sput-object v1, Lcom/deepalhome/launcher/util/LogcatUtil;->logcatProcess:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget v2, Lkotlin/Result;->$r8$clinit:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_0
    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->readThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    sput-object v1, Lcom/deepalhome/launcher/util/LogcatUtil;->readThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method
