.class public final Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMusicInfoChanged(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;)V
    .locals 11

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    iget-object v9, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    iget-object v10, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->source:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne v10, v0, :cond_0

    invoke-static {v9}, Lcom/deepalhome/launcher/music/MusicManager;->normalizeBluetoothMusicInfo(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/Music;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/deepalhome/launcher/music/MusicManager;->getStableMusicInfo(Ljava/lang/String;Ljava/lang/String;J)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v9

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-object v1, v9

    invoke-static/range {v1 .. v8}, Lcom/deepalhome/launcher/music/Music;->copy$default(Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;JILjava/lang/Object;)Lcom/deepalhome/launcher/music/Music;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canSeek:Z

    sput-boolean v1, Lcom/deepalhome/launcher/music/MusicManager;->privateCanSeek:Z

    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canCollect:Z

    sput-boolean v1, Lcom/deepalhome/launcher/music/MusicManager;->privateCanCollect:Z

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->isCollected:Z

    sput-boolean p0, Lcom/deepalhome/launcher/music/MusicManager;->privateIsCollected:Z

    sput-object v10, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateInfoAt:J

    if-nez v0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Bluetooth private protocol song info not stable, waiting for singer field update before refresh: title="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", singer="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MusicManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->getFallbackPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->updatePrivatePackage(Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne p0, v0, :cond_3

    invoke-static {v10}, Lcom/deepalhome/launcher/music/MusicManager;->notifyPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V

    :cond_3
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->evaluateActiveDataSource()V

    goto :goto_2

    :cond_4
    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateMusic:Lcom/deepalhome/launcher/music/Music;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/music/MusicManager;->persistLastMusic(Lcom/deepalhome/launcher/music/Music;Landroid/media/MediaMetadata;)V

    sget-object v1, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne v10, v1, :cond_5

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v2, v3, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->updateFavoriteState(JLjava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {v10}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->getFallbackPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->updatePrivatePackage(Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne p0, v1, :cond_6

    invoke-static {v10}, Lcom/deepalhome/launcher/music/MusicManager;->notifyPrivateSourceChanged(Lcom/deepalhome/launcher/util/s05/music/MusicSource;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->notifyInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    :cond_6
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->evaluateActiveDataSource()V

    :goto_2
    return-void
.end method
