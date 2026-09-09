.class public final Lcom/deepalhome/launcher/music/MusicManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

.field public static activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

.field public static binder:Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

.field public static final connection:Lcom/deepalhome/launcher/music/MusicManager$connection$1;

.field public static final coverPersistToken:Ljava/util/concurrent/atomic/AtomicLong;

.field public static currentNotificationPackage:Ljava/lang/String;

.field public static currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

.field public static lastNotificationInfoAt:J

.field public static lastNotificationMusic:Lcom/deepalhome/launcher/music/Music;

.field public static lastNotificationState:Landroid/media/session/PlaybackState;

.field public static lastPlaybackPosition:J

.field public static lastPlaybackState:Ljava/lang/Integer;

.field public static lastPlayingPackageName:Ljava/lang/String;

.field public static lastPrivateInfoAt:J

.field public static lastPrivateMusic:Lcom/deepalhome/launcher/music/Music;

.field public static lastPrivatePackageName:Ljava/lang/String;

.field public static lastPrivateState:Landroid/media/session/PlaybackState;

.field public static lastRefreshAt:J

.field public static final mainHandler:Landroid/os/Handler;

.field public static mediaController:Landroid/media/session/MediaController;

.field public static final mediaControllerCallback:Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;

.field public static final onMusicChangedListeners:Ljava/util/ArrayList;

.field public static playbackPollingActive:Z

.field public static final playbackPollingRunnable:Lcom/deepalhome/launcher/music/MusicManager$playbackPollingRunnable$1;

.field public static privateBridge:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

.field public static privateCanCollect:Z

.field public static privateCanSeek:Z

.field public static privateIsCollected:Z

.field public static final refreshRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

.field public static refreshScheduled:Z

.field public static final sessionWatchers:Ljava/util/LinkedHashMap;

.field public static final stableMusicCache:Lcom/deepalhome/launcher/music/MusicManager$stableMusicCache$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->onMusicChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mainHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->sessionWatchers:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->refreshRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$playbackPollingRunnable$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicManager$playbackPollingRunnable$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->playbackPollingRunnable:Lcom/deepalhome/launcher/music/MusicManager$playbackPollingRunnable$1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->coverPersistToken:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$stableMusicCache$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicManager$stableMusicCache$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->stableMusicCache:Lcom/deepalhome/launcher/music/MusicManager$stableMusicCache$1;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaControllerCallback:Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$connection$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicManager$connection$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->connection:Lcom/deepalhome/launcher/music/MusicManager$connection$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->onMusicChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-interface {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateMusic:Lcom/deepalhome/launcher/music/Music;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivatePackageName:Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->getFallbackPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_0
    invoke-interface {p0, v1}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onMusicAppChanged(Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateState:Landroid/media/session/PlaybackState;

    if-eqz v0, :cond_a

    invoke-interface {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onStateChanged(Landroid/media/session/PlaybackState;)V

    goto :goto_1

    :cond_5
    invoke-interface {p0, v1}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationMusic:Lcom/deepalhome/launcher/music/Music;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    :cond_7
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->currentNotificationPackage:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->resolvePreferredMusicPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-interface {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onMusicAppChanged(Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->toRealtimeState(Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onStateChanged(Landroid/media/session/PlaybackState;)V

    return-void

    :cond_9
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationState:Landroid/media/session/PlaybackState;

    if-eqz v0, :cond_a

    invoke-interface {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onStateChanged(Landroid/media/session/PlaybackState;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public static buildFallbackPlaybackState()Landroid/media/session/PlaybackState;
    .locals 7

    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    sget-wide v1, Lcom/deepalhome/launcher/music/MusicManager;->lastPlaybackPosition:J

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static canSeekCurrentSource()Z
    .locals 8

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lcom/deepalhome/launcher/music/MusicManager;->privateCanSeek:Z

    goto :goto_1

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationState:Landroid/media/session/PlaybackState;

    :cond_3
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    move-wide v4, v2

    :goto_0
    const-wide/16 v6, 0x100

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static dispatchPlaybackControl(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->tryPrivateControl(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->tryPrivateControl(Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method public static evaluateActiveDataSource()V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sget-wide v5, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationInfoAt:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x5dc

    cmp-long v2, v5, v7

    if-gtz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sget-object v5, Lcom/deepalhome/launcher/music/MusicManager;->privateBridge:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->available:Z

    if-ne v5, v4, :cond_1

    sget-object v5, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateMusic:Lcom/deepalhome/launcher/music/Music;

    if-eqz v5, :cond_1

    sget-wide v5, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateInfoAt:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x1770

    cmp-long v0, v0, v5

    if-gtz v0, :cond_1

    move v3, v4

    :cond_1
    if-eqz v3, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    sget-object v1, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateState:Landroid/media/session/PlaybackState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateState:Landroid/media/session/PlaybackState;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :goto_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    :goto_2
    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->switchActiveDataSource(Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V

    return-void
.end method

.method public static findMediaControllerByPackage(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/media/session/MediaController;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getCurrentPlaybackState()Landroid/media/session/PlaybackState;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateState:Landroid/media/session/PlaybackState;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->toRealtimeState(Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationState:Landroid/media/session/PlaybackState;

    :goto_0
    return-object v0
.end method

.method public static getLyricOffsetMs()J
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    sget-object v1, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x5dc

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getPersistedMusic()Lcom/deepalhome/launcher/music/Music;
    .locals 10

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getLastMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/deepalhome/launcher/music/MusicCoverStore;->INSTANCE:Lcom/deepalhome/launcher/music/MusicCoverStore;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/deepalhome/launcher/music/MusicCoverStore;->normalizeCoverString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/deepalhome/launcher/music/Music;->copy$default(Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;JILjava/lang/Object;)Lcom/deepalhome/launcher/music/Music;

    move-result-object v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setLastMusic(Lcom/deepalhome/launcher/music/Music;)V

    return-object v1

    :cond_1
    return-object v2

    :cond_2
    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/deepalhome/launcher/music/Music;->copy$default(Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;JILjava/lang/Object;)Lcom/deepalhome/launcher/music/Music;

    move-result-object v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setLastMusic(Lcom/deepalhome/launcher/music/Music;)V

    return-object v1
.end method

.method public static getSelectedMusicAppPackageName()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getAutoMusicAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v1

    :cond_2
    :goto_1
    return-object v3
.end method

.method public static getStableMusicInfo(Ljava/lang/String;Ljava/lang/String;J)Lkotlin/Pair;
    .locals 9

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->stableMusicCache:Lcom/deepalhome/launcher/music/MusicManager$stableMusicCache$1;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/music/MusicManager$stableMusicCache$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;

    if-eqz v0, :cond_1

    invoke-static {p0, p1, v0}, Lcom/deepalhome/launcher/music/MusicManager;->isSameSong(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Lkotlin/Pair;

    iget-object p1, v0, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;->title:Ljava/lang/String;

    iget-object p2, v0, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;->singer:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;

    invoke-direct {p3, p0, p1}, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/deepalhome/launcher/music/MusicManager$stableMusicCache$1;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;

    cmp-long v8, v6, v2

    if-eqz v8, :cond_4

    if-nez v0, :cond_3

    :cond_4
    iget-object v8, v5, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;->title:Ljava/lang/String;

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p0, p1, v5}, Lcom/deepalhome/launcher/music/MusicManager;->isSameSong(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/music/MusicManager$stableMusicCache$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lkotlin/Pair;

    iget-object p1, v5, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;->title:Ljava/lang/String;

    iget-object p2, v5, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;->singer:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;

    invoke-direct {p3, p0, p1}, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static handlePlayButtonClick(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager$pause$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$pause$1;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$pause$2;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$pause$2;

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager;->dispatchPlaybackControl(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_8

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    :goto_3
    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager$play$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$play$1;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$play$2;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$play$2;

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager;->dispatchPlaybackControl(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_8

    :cond_6
    :goto_4
    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8

    goto :goto_8

    :cond_8
    :goto_5
    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    goto :goto_8

    :cond_a
    :goto_6
    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->launchCurrentMusicApp(Ljava/lang/String;)Z

    goto :goto_8

    :cond_c
    :goto_7
    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->launchCurrentMusicApp(Ljava/lang/String;)Z

    :goto_8
    return-void
.end method

.method public static hasPermission()Z
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicService;->Companion:Lcom/deepalhome/launcher/music/MusicService$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "com.deepalhome.launcher.music.MusicService"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isSameSong(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;)Z
    .locals 7

    iget-object v0, p2, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;->title:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    iget-object p2, p2, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;->singer:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/deepalhome/launcher/music/MusicManager$SameSongDebug;

    const-string p1, "exact"

    invoke-direct {p0, p1, v2}, Lcom/deepalhome/launcher/music/MusicManager$SameSongDebug;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, ".*"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lkotlin/text/Regex;

    invoke-direct {v5, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    new-instance p0, Lcom/deepalhome/launcher/music/MusicManager$SameSongDebug;

    const-string p1, "rawSingerContainsCachedTitleThenSinger"

    invoke-direct {p0, p1, v2}, Lcom/deepalhome/launcher/music/MusicManager$SameSongDebug;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lkotlin/text/Regex;

    invoke-direct {v5, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v4, :cond_4

    new-instance p0, Lcom/deepalhome/launcher/music/MusicManager$SameSongDebug;

    const-string p1, "rawSingerContainsCachedSingerThenTitle"

    invoke-direct {p0, p1, v2}, Lcom/deepalhome/launcher/music/MusicManager$SameSongDebug;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/deepalhome/launcher/music/MusicManager$SameSongDebug;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exactTitle="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " exactSinger="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " containsTitleSinger="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " containsSingerTitle="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/music/MusicManager$SameSongDebug;-><init>(Ljava/lang/String;Z)V

    move-object p0, v2

    :goto_2
    iget-boolean p0, p0, Lcom/deepalhome/launcher/music/MusicManager$SameSongDebug;->match:Z

    return p0
.end method

.method public static launchCurrentMusicApp(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_5

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getAutoMusicAppName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, v0

    goto :goto_2

    :cond_4
    move-object p0, v2

    :cond_5
    :goto_2
    const-string v2, "Music"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    const-string p0, "com.tinnove.mediacenter"

    invoke-static {p0}, Lcom/blankj/utilcode/util/IntentUtils;->getLaunchAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_6
    return v3

    :cond_7
    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/blankj/utilcode/util/IntentUtils;->getLaunchAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_9
    return v3
.end method

.method public static normalizeBluetoothMusicInfo(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/Music;
    .locals 13

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOfAny(Ljava/lang/CharSequence;[CIZ)I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v3

    if-lt v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "substring(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0xa

    const/4 v12, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v12}, Lcom/deepalhome/launcher/music/Music;->copy$default(Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;JILjava/lang/Object;)Lcom/deepalhome/launcher/music/Music;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v2

    :array_0
    .array-data 2
        0x2ds
        0x2014s
        0x2013s
    .end array-data
.end method

.method public static notifyInfoChanged(Lcom/deepalhome/launcher/music/Music;)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->onMusicChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;

    invoke-interface {v1, p0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static notifyPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->onMusicChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;

    invoke-interface {v1, p0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static persistLastMusic(Lcom/deepalhome/launcher/music/Music;Landroid/media/MediaMetadata;)V
    .locals 13

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->coverPersistToken:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v7, v2

    goto :goto_4

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    const-string v2, "android.media.metadata.ART_URI"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    const-string v2, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v4

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v2, v4

    goto :goto_1

    :goto_4
    if-eqz v7, :cond_8

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    const/16 v11, 0xd

    const/4 v12, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v12}, Lcom/deepalhome/launcher/music/Music;->copy$default(Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;JILjava/lang/Object;)Lcom/deepalhome/launcher/music/Music;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setLastMusic(Lcom/deepalhome/launcher/music/Music;)V

    return-void

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    move-object v4, p1

    check-cast v4, Landroid/graphics/Bitmap;

    :cond_9
    if-nez v4, :cond_a

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/music/Music;->copy$default(Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;JILjava/lang/Object;)Lcom/deepalhome/launcher/music/Music;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setLastMusic(Lcom/deepalhome/launcher/music/Music;)V

    return-void

    :cond_a
    new-instance p1, Lcom/deepalhome/launcher/music/MusicManager$persistLastMusic$1;

    invoke-direct {p1, p0, v4, v0, v1}, Lcom/deepalhome/launcher/music/MusicManager$persistLastMusic$1;-><init>(Lcom/deepalhome/launcher/music/Music;Landroid/graphics/Bitmap;J)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->executeBySingle(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public static publishPlaybackState(Landroid/media/session/PlaybackState;Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->toRealtimeState(Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne p1, v0, :cond_1

    sput-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationState:Landroid/media/session/PlaybackState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationInfoAt:J

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateState:Landroid/media/session/PlaybackState;

    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    sput-wide v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPlaybackPosition:J

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->onMusicChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;

    invoke-interface {v0, p0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onStateChanged(Landroid/media/session/PlaybackState;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static removeOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->onMusicChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static resolveFavoriteTargetPackage()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->getFallbackPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivatePackageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static resolvePreferredMusicPackageName()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getAutoMusicAppName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static runOnMain(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda3;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static seekTo(J)V
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->privateCanSeek:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$seekTo$1;

    invoke-direct {v0, p0, p1}, Lcom/deepalhome/launcher/music/MusicManager$seekTo$1;-><init>(J)V

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->tryPrivateControl(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->currentNotificationPackage:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->sessionWatchers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;

    iget-object v4, v4, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    :cond_4
    check-cast v2, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;

    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;->controller:Landroid/media/session/MediaController;

    if-nez v0, :cond_7

    :cond_5
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0, p1}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    return-void

    :cond_8
    sget-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->privateCanSeek:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$seekTo$3;

    invoke-direct {v0, p0, p1}, Lcom/deepalhome/launcher/music/MusicManager$seekTo$3;-><init>(J)V

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->tryPrivateControl(Lkotlin/jvm/functions/Function1;)Z

    :cond_9
    return-void
.end method

.method public static sendCollectCommandToLunaMusic(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.luna.music.COLLECT_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.arcvideo.car.luna.music"

    const-string v3, "com.arcvideo.car.luna.music.helper.CollectReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "command"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendCollectCommandToQqMusic(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.qqmusiccar.COLLECT_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.qqmusiccar"

    const-string v3, "com.tencent.qqmusiccar.helper.CollectReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "command"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendToggleFavoriteToAppleMusic()V
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;->INSTANCE:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.apple.android.music.playback.action.TOGGLE_FAVORITE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.apple.android.music"

    const-string v4, "com.apple.android.music.player.FavoriteActionBroadcastReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static shouldNormalizeChineseMetadata(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "com.spotify.music"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;->INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.apple.android.music"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getAutoMusicAppName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    const-string v0, "spotify"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "apple music"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public static shouldSuppressHUDLyric()Z
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    sget-object v1, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static start()V
    .locals 7

    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "HUDLyricManager"

    sget-object v1, Lcom/deepalhome/launcher/hud/HudLyricManager;->doubleMediaProxy:Lcom/incall/serversdk/interactive/DoubleMediaProxy;

    if-nez v1, :cond_2

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/incall/serversdk/interactive/DoubleMediaProxy;->getInstance()Lcom/incall/serversdk/interactive/DoubleMediaProxy;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/launcher/hud/HudLyricManager;->doubleMediaProxy:Lcom/incall/serversdk/interactive/DoubleMediaProxy;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/deepalhome/launcher/hud/HudLyricManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Lcom/incall/serversdk/base/BaseProxy;->registerConnChangeListener(Lcom/incall/serversdk/server/OnSrvConnChangeListener;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "SDK initialization successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, "SDK initialization failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->notifyInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    :cond_3
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->privateBridge:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const-string v1, "getApp(...)"

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;

    invoke-direct {v3}, Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;-><init>(Landroid/app/Application;Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->privateBridge:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    :goto_3
    iget-boolean v2, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->started:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    goto/16 :goto_8

    :cond_5
    iput-boolean v3, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->started:Z

    iget-object v2, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    iget-object v4, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->musicChangeListener:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;

    if-nez v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_6
    iget-object v5, v2, Lcom/wt/musicsdk/MusicOnLineManager;->mMusicChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/wt/musicsdk/MusicOnLineManager;->registerRemoteMusicListenerIfNeeded()V

    :goto_4
    iget-object v4, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->playStateListener:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1;

    if-nez v4, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_7
    iget-object v5, v2, Lcom/wt/musicsdk/MusicOnLineManager;->mPlayStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/wt/musicsdk/MusicOnLineManager;->registerRemotePlayStateListenerIfNeeded()V

    :goto_5
    iget-object v4, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->progressListener:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;

    if-nez v4, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :cond_8
    iget-object v5, v2, Lcom/wt/musicsdk/MusicOnLineManager;->mProgressListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/wt/musicsdk/MusicOnLineManager;->registerRemoteProgressListenerIfNeeded()V

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->applicationContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->serviceCallback:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1;

    if-nez v4, :cond_9

    if-eqz v5, :cond_c

    new-instance v2, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onError$1;

    iget-object v4, v5, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    invoke-direct {v2, v4}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onError$1;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    invoke-virtual {v4, v2}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->post(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v2, Lcom/wt/musicsdk/MusicOnLineManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_a

    iget-object v4, v2, Lcom/wt/musicsdk/MusicOnLineManager;->mServiceConnectedCallbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-boolean v4, v2, Lcom/wt/musicsdk/MusicOnLineManager;->serviceConnected:Z

    if-eqz v4, :cond_b

    if-eqz v5, :cond_c

    new-instance v2, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onSuccess$1;

    iget-object v4, v5, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    invoke-direct {v2, v4}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onSuccess$1;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    invoke-virtual {v4, v2}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->post(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_b
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/wt/musicsdk/MusicOnLineManager;->scheduleBindService(J)V

    :cond_c
    :goto_7
    new-instance v2, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$start$1;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$start$1;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->post(Lkotlin/jvm/functions/Function0;)V

    :goto_8
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->binder:Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$refreshMediaController$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$refreshMediaController$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->runOnMain(Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->getInstance(Landroid/content/Context;)Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->show(Z)V

    :cond_e
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->startHudIfAvailable(Landroid/content/Context;)Z

    :cond_f
    return-void

    :cond_10
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->connection:Lcom/deepalhome/launcher/music/MusicManager$connection$1;

    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v5

    const-class v6, Lcom/deepalhome/launcher/music/MusicService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->getInstance(Landroid/content/Context;)Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->show(Z)V

    :cond_11
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->startHudIfAvailable(Landroid/content/Context;)Z

    :cond_12
    return-void
.end method

.method public static stopPlaybackPolling()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->playbackPollingActive:Z

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->playbackPollingRunnable:Lcom/deepalhome/launcher/music/MusicManager$playbackPollingRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static switchActiveDataSource(Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->notifyPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivatePackageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->updatePrivatePackage(Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateMusic:Lcom/deepalhome/launcher/music/Music;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->notifyInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateState:Landroid/media/session/PlaybackState;

    if-eqz p0, :cond_7

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/music/MusicManager;->publishPlaybackState(Landroid/media/session/PlaybackState;Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->notifyPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->currentNotificationPackage:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->updateNotificationApp(Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationMusic:Lcom/deepalhome/launcher/music/Music;

    if-nez p0, :cond_5

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object p0

    :cond_5
    if-eqz p0, :cond_6

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->notifyInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    :cond_6
    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastNotificationState:Landroid/media/session/PlaybackState;

    if-eqz p0, :cond_7

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/music/MusicManager;->publishPlaybackState(Landroid/media/session/PlaybackState;Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static toRealtimeState(Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 9

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-static {v7, v8, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    long-to-float v0, v0

    long-to-float v1, v4

    mul-float/2addr v1, v6

    add-float/2addr v1, v0

    float-to-long v0, v1

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    return-object p0

    :cond_4
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2, p0}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static toggleFavorite(Z)Z
    .locals 21

    const-string v0, "com.luna.music"

    const-string v1, "com.arcvideo.car.luna.music"

    const-string v2, "com.apple.android.music"

    const-string v3, "com.tencent.qqmusiccar"

    const-string v4, ", privateBridgeAvailable="

    const-string v5, "com.tinnove.mediacenter"

    const-string v6, "Music"

    const-string v10, "MusicManager"

    const-string v11, ", duration="

    const-string v12, ", singer="

    const-string v14, ", title="

    const-string v15, ", privateIsCollected="

    const-string v13, ", privateCanCollect="

    const-string v9, ", privateSource="

    const-string v7, ", activeDataSource="

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->resolveFavoriteTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v16

    move-object/from16 v17, v0

    const-string v0, "Unlike request: targetPackage="

    invoke-static {v0, v8, v7}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v18, v7

    sget-object v7, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/deepalhome/launcher/music/MusicManager;->privateCanCollect:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/deepalhome/launcher/music/MusicManager;->privateIsCollected:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v7, "uncollect"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_8

    :sswitch_1
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_8

    :cond_3
    sget-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->privateCanCollect:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$unLike$controlSuccess$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$unLike$controlSuccess$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->tryPrivateControl(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->privateIsCollected:Z

    if-eqz v16, :cond_9

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v2, v3, v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->updateFavoriteState(JLjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_4
    const-string v0, "Unsupported or failed to unlike: targetPackage="

    invoke-static {v0, v8, v13}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/deepalhome/launcher/music/MusicManager;->privateCanCollect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->privateBridge:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    if-eqz v1, :cond_5

    iget-boolean v1, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->available:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f130367

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_11

    :sswitch_2
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    invoke-static {v7}, Lcom/deepalhome/launcher/music/MusicManager;->sendCollectCommandToQqMusic(Ljava/lang/String;)V

    goto :goto_5

    :sswitch_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->sendToggleFavoriteToAppleMusic()V

    goto :goto_5

    :sswitch_4
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_8

    :sswitch_5
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-static {v7}, Lcom/deepalhome/launcher/music/MusicManager;->sendCollectCommandToLunaMusic(Ljava/lang/String;)V

    :cond_9
    :goto_5
    const-string v0, "Unlike successful: targetPackage="

    invoke-static {v0, v8, v14}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_b
    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f130377

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x1

    goto/16 :goto_11

    :cond_c
    :goto_8
    const-string v0, "Unlike did not hit supported branch: targetPackage="

    move-object/from16 v7, v18

    invoke-static {v0, v8, v7}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f130367

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_d
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->resolveFavoriteTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v16

    move-object/from16 v17, v0

    const-string v0, "Favorite request: targetPackage="

    invoke-static {v0, v8, v7}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v18, v7

    sget-object v7, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/deepalhome/launcher/music/MusicManager;->privateCanCollect:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/deepalhome/launcher/music/MusicManager;->privateIsCollected:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_e
    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_b

    :cond_10
    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v7, "collect"

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_10

    :sswitch_6
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_10

    :sswitch_7
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_10

    :cond_11
    sget-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->privateCanCollect:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$like$controlSuccess$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$like$controlSuccess$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->tryPrivateControl(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    sput-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->privateIsCollected:Z

    if-eqz v16, :cond_12

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v2, v3, v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->updateFavoriteState(JLjava/lang/String;Ljava/lang/String;Z)V

    :cond_12
    move v4, v0

    goto/16 :goto_d

    :cond_13
    const-string v0, "Unsupported or failed to favorite: targetPackage="

    invoke-static {v0, v8, v13}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/deepalhome/launcher/music/MusicManager;->privateCanCollect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->privateBridge:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    if-eqz v1, :cond_14

    iget-boolean v1, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->available:Z

    const/4 v4, 0x1

    if-ne v1, v4, :cond_14

    move v7, v4

    goto :goto_c

    :cond_14
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f130367

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :sswitch_8
    const/4 v4, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_10

    :cond_15
    invoke-static {v7}, Lcom/deepalhome/launcher/music/MusicManager;->sendCollectCommandToQqMusic(Ljava/lang/String;)V

    goto :goto_d

    :sswitch_9
    const/4 v4, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_10

    :cond_16
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->sendToggleFavoriteToAppleMusic()V

    goto :goto_d

    :sswitch_a
    const/4 v4, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_10

    :sswitch_b
    move-object/from16 v0, v17

    const/4 v4, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_10

    :cond_17
    invoke-static {v7}, Lcom/deepalhome/launcher/music/MusicManager;->sendCollectCommandToLunaMusic(Ljava/lang/String;)V

    :goto_d
    const-string v0, "Favorite successful: targetPackage="

    invoke-static {v0, v8, v14}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v16, :cond_18

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_18
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_19

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v13

    goto :goto_f

    :cond_19
    const/4 v13, 0x0

    :goto_f
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f130366

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v4

    goto :goto_11

    :cond_1a
    :goto_10
    const-string v0, "Favorite did not hit supported branch: targetPackage="

    move-object/from16 v1, v18

    invoke-static {v0, v8, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f130367

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v1

    :goto_11
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5fb9a2c0 -> :sswitch_5
        -0x29578d3b -> :sswitch_4
        -0x1047a99b -> :sswitch_3
        -0xe791a7b -> :sswitch_2
        -0x390f4d9 -> :sswitch_1
        0x473fe05 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5fb9a2c0 -> :sswitch_b
        -0x29578d3b -> :sswitch_a
        -0x1047a99b -> :sswitch_9
        -0xe791a7b -> :sswitch_8
        -0x390f4d9 -> :sswitch_7
        0x473fe05 -> :sswitch_6
    .end sparse-switch
.end method

.method public static tryPrivateControl(Lkotlin/jvm/functions/Function1;)Z
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->privateBridge:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->available:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static updateHUDMusicInfo(Lcom/deepalhome/launcher/music/Music;)V
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v3, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    const-string v4, ""

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/deepalhome/launcher/music/MusicManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v4, "com.tinnove.mediacenter"

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->getFallbackPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v2

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_4
    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->currentNotificationPackage:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_5
    :goto_1
    sget-object v2, Lcom/deepalhome/launcher/hud/HudLyricManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "musicName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "singerName"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sput-wide v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicId:J

    sput-object v3, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicName:Ljava/lang/String;

    sput-object p0, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentSingerName:Ljava/lang/String;

    sput-object v4, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudLyricManager;->sendMediaInfo()V

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->shouldSuppressHUDLyric()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudLyricManager;->clearLyric()V

    :cond_6
    return-void
.end method

.method public static updateNotificationApp(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/deepalhome/launcher/music/MusicManager;->currentNotificationPackage:Ljava/lang/String;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->onMusicChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;

    invoke-interface {v1, p0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onMusicAppChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static updatePrivatePackage(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivatePackageName:Ljava/lang/String;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->onMusicChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;

    invoke-interface {v1, p0}, Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;->onMusicAppChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static updateSessionWatchers(Ljava/util/ArrayList;)V
    .locals 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    new-instance p0, Lcom/deepalhome/launcher/music/MusicManager$updateSessionWatchers$1;

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/music/MusicManager$updateSessionWatchers$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->runOnMain(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    if-eqz p0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :cond_4
    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->sessionWatchers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;

    iget-object v5, v5, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;->controller:Landroid/media/session/MediaController;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;

    iget-object v4, v4, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;->callback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v5, v4}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    const-string v5, "getSessionToken(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;

    if-eqz v5, :cond_8

    iget-object v6, v5, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;->controller:Landroid/media/session/MediaController;

    if-eq v6, v3, :cond_7

    :cond_8
    if-eqz v5, :cond_9

    iget-object v6, v5, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;->controller:Landroid/media/session/MediaController;

    if-eqz v6, :cond_9

    iget-object v5, v5, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;->callback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v6, v5}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_9
    new-instance v5, Lcom/deepalhome/launcher/music/MusicManager$updateSessionWatchers$2$callback$1;

    invoke-direct {v5, v3}, Lcom/deepalhome/launcher/music/MusicManager$updateSessionWatchers$2$callback$1;-><init>(Landroid/media/session/MediaController;)V

    new-instance v6, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;

    invoke-direct {v6, v3, v5}, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;-><init>(Landroid/media/session/MediaController;Lcom/deepalhome/launcher/music/MusicManager$updateSessionWatchers$2$callback$1;)V

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/deepalhome/launcher/music/MusicManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v4}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPlayingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->lastPlayingPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_e
    :goto_3
    sput-object v1, Lcom/deepalhome/launcher/music/MusicManager;->lastPlayingPackageName:Ljava/lang/String;

    :cond_f
    :goto_4
    return-void
.end method
