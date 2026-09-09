.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager$musicStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfoChanged(Lcom/deepalhome/launcher/music/Music;)V
    .locals 0

    return-void
.end method

.method public final onMusicAppChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V
    .locals 0

    return-void
.end method

.method public final onStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    :goto_0
    sget-boolean p1, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->mutedByMusicPlayback:Z

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    sput-boolean p0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->mutedByMusicPlayback:Z

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->notifyListeners()V

    :goto_1
    return-void

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
