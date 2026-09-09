.class public final Lcom/deepalhome/launcher/music/MusicManager$playbackPollingRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->playbackPollingActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/music/MusicManager;->publishPlaybackState(Landroid/media/session/PlaybackState;Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V

    sget-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->playbackPollingActive:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
