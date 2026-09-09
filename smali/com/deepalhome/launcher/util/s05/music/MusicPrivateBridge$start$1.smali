.class public final Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$start$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$start$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$start$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget-object v0, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {v0}, Lcom/wt/musicsdk/MusicOnLineManager;->getCurrentMusic()Lcom/wt/musicsdk/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$start$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->dispatchMusicInfo(Lcom/wt/musicsdk/MusicInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$start$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget-object v1, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {v1}, Lcom/wt/musicsdk/MusicOnLineManager;->getCurrentPlayState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->handlePlayState(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$start$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget-object v1, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {v1}, Lcom/wt/musicsdk/MusicOnLineManager;->getCurrentProgress()J

    move-result-wide v1

    iget-object v3, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$start$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget-wide v3, v3, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastKnownDuration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->handleProgress(JJ)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$start$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    iget-boolean v0, v0, Lcom/wt/musicsdk/MusicOnLineManager;->serviceConnected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->access$updateAvailability(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
