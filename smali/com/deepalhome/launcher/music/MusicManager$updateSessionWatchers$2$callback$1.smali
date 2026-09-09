.class public final Lcom/deepalhome/launcher/music/MusicManager$updateSessionWatchers$2$callback$1;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic $controller:Landroid/media/session/MediaController;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicManager$updateSessionWatchers$2$callback$1;->$controller:Landroid/media/session/MediaController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    :cond_2
    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicManager$updateSessionWatchers$2$callback$1;->$controller:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/deepalhome/launcher/music/MusicManager;->lastPlayingPackageName:Ljava/lang/String;

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicManager;->runOnMain(Lkotlin/jvm/functions/Function0;)V

    :cond_4
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$requestRefreshMediaController$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->runOnMain(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
