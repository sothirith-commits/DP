.class public final Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceDisconnected$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceDisconnected$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceDisconnected$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceDisconnected$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceDisconnected$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$connection$1$onServiceDisconnected$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    const/4 p0, 0x0

    sput-object p0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    sput-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastPlaybackState:Ljava/lang/Integer;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->stopPlaybackPolling()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->refreshScheduled:Z

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->refreshRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->sessionWatchers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;

    iget-object v3, v2, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;->controller:Landroid/media/session/MediaController;

    iget-object v2, v2, Lcom/deepalhome/launcher/music/MusicManager$SessionWatcher;->callback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v3, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    sput-object p0, Lcom/deepalhome/launcher/music/MusicManager;->lastPlayingPackageName:Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
