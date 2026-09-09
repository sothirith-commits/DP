.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public activeGeneration:Ljava/lang/Long;

.field public activeRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

.field public generationCounter:J

.field public pendingForceRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized isCurrent(J)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeGeneration:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
