.class public final Lcom/openos/ConnectionServiceMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mConnectionServiceMonitor:Lcom/openos/ConnectionServiceMonitor;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mServiceNeedConnected:Ljava/util/Vector;

.field public final mServices:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/openos/ConnectionServiceMonitor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Lme/wcy/lrcview/LrcView$5;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lme/wcy/lrcview/LrcView$5;-><init>(ILjava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/openos/ConnectionServiceMonitor;->mServices:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/openos/ConnectionServiceMonitor;->mServiceNeedConnected:Ljava/util/Vector;

    new-instance v1, Lcom/openos/ConnectionServiceMonitor$2;

    const-string v2, "ConnectionServiceMonitor thread"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/openos/ConnectionServiceMonitor$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/openos/ConnectionServiceMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/openos/ConnectionServiceMonitor;
    .locals 2

    const-class v0, Lcom/openos/ConnectionServiceMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/openos/ConnectionServiceMonitor;->mConnectionServiceMonitor:Lcom/openos/ConnectionServiceMonitor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/openos/ConnectionServiceMonitor;

    invoke-direct {v1}, Lcom/openos/ConnectionServiceMonitor;-><init>()V

    sput-object v1, Lcom/openos/ConnectionServiceMonitor;->mConnectionServiceMonitor:Lcom/openos/ConnectionServiceMonitor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/openos/ConnectionServiceMonitor;->mConnectionServiceMonitor:Lcom/openos/ConnectionServiceMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method
