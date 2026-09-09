.class public final Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onSuccess$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onSuccess$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->access$updateAvailability(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1$onSuccess$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {v0}, Lcom/wt/musicsdk/MusicOnLineManager;->getCurrentMusic()Lcom/wt/musicsdk/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->dispatchMusicInfo(Lcom/wt/musicsdk/MusicInfo;)V

    :cond_0
    invoke-virtual {v0}, Lcom/wt/musicsdk/MusicOnLineManager;->getCurrentPlayState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->handlePlayState(I)V

    invoke-virtual {v0}, Lcom/wt/musicsdk/MusicOnLineManager;->getCurrentProgress()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastKnownDuration:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->handleProgress(JJ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
