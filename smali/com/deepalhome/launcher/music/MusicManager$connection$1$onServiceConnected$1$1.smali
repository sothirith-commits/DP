.class public final Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceConnected$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $snapshot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceConnected$1$1;->$snapshot:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceConnected$1$1;->$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->updateSessionWatchers(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/music/MusicManager;->findMediaControllerByPackage(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/media/session/MediaController;

    move-result-object v0

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x6

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPlayingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    if-ne v7, v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    if-ne v7, v5, :cond_3

    :goto_0
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v0, v6

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    if-ne v6, v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    if-ne v6, v5, :cond_6

    :goto_2
    move-object v0, v1

    goto :goto_3

    :cond_8
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_9

    goto/16 :goto_6

    :cond_9
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getAutoMusicAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/music/MusicManager;->findMediaControllerByPackage(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/media/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_a

    goto/16 :goto_6

    :cond_a
    move-object v0, v3

    goto :goto_6

    :cond_b
    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    sget-object v6, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    if-nez v6, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    if-ne v6, v2, :cond_c

    :goto_4
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v6

    if-eqz v6, :cond_c

    move-object v0, v1

    goto :goto_5

    :cond_f
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_10

    goto :goto_6

    :cond_10
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaController;

    move-object v0, p0

    :goto_6
    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->mediaControllerCallback:Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;

    if-nez v0, :cond_12

    sget-object v0, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->bluetoothResolver:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;

    iget-object v0, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;->stateMachine:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;

    iput-object v3, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    iput-object v3, v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->resolvePreferredMusicPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_11
    sput-object v3, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    sput-object v3, Lcom/deepalhome/launcher/music/MusicManager;->lastPlaybackState:Ljava/lang/Integer;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->stopPlaybackPolling()V

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->updateNotificationApp(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->buildFallbackPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager;->publishPlaybackState(Landroid/media/session/PlaybackState;Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V

    goto/16 :goto_b

    :cond_12
    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    goto :goto_7

    :cond_13
    move-object v1, v3

    :goto_7
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    goto/16 :goto_b

    :cond_14
    sget-object v1, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->bluetoothResolver:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;

    iget-object v1, v1, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;->stateMachine:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;

    iput-object v3, v1, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    iput-object v3, v1, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_15
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->stopPlaybackPolling()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    sput-object v3, Lcom/deepalhome/launcher/music/MusicManager;->lastPlaybackState:Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v2, v6

    if-eqz v2, :cond_16

    goto :goto_8

    :cond_16
    move-object v1, v3

    :goto_8
    if-eqz v1, :cond_1b

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_17
    if-nez v3, :cond_18

    goto :goto_9

    :cond_18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_1a

    :goto_9
    if-nez v3, :cond_19

    goto :goto_a

    :cond_19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_1a

    :goto_a
    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getAutoMusicAppName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setAutoMusicAppName(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicManager;->updateNotificationApp(Ljava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager$mediaControllerCallback$1;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    :goto_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
