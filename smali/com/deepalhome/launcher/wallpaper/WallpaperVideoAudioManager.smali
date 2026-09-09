.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

.field public static volatile isMusicStateListenerRegistered:Z

.field public static final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final musicStateListener:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager$musicStateListener$1;

.field public static volatile mutedByMusicPlayback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager$musicStateListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager$musicStateListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->musicStateListener:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager$musicStateListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyListeners()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperVideoAudioEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->mutedByMusicPlayback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final ensureMusicStateListenerRegistered()V
    .locals 4

    sget-boolean v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->isMusicStateListenerRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->isMusicStateListenerRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->musicStateListener:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager$musicStateListener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicManager;->addOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    sput-boolean v2, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->mutedByMusicPlayback:Z

    sput-boolean v1, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->isMusicStateListenerRegistered:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
