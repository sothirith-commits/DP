.class public final Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicChangedListener$1;
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
    .locals 2

    sget-object p0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->mainHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
    .locals 2

    sget-object p0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->mainHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
