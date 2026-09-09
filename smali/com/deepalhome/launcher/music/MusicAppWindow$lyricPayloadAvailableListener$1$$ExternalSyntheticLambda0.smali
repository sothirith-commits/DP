.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;JLjava/lang/String;Lcom/deepalhome/launcher/music/Music;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$3:J

    iput-object p5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p6, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;I)V
    .locals 0

    iput p7, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$3:J

    iput-object p6, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v2, "$key"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    const-string v3, "$cover"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    check-cast v3, Lcom/deepalhome/launcher/music/Music;

    const-string v4, "$music"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v4, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverInfoRequestToken:J

    iget-wide v6, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$3:J

    cmp-long p0, v4, v6

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$showCover(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/music/MusicManager;->updateHUDMusicInfo(Lcom/deepalhome/launcher/music/Music;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v1, "$title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    const-string v1, "$singer"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    const-string v1, "$payload"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-nez v1, :cond_3

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    :cond_3
    move-object v6, v1

    iget-wide v4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$3:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->buildLyricRequestKey(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/util/s05/music/MusicSource;)Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentLyricRequestKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->finishLyricRequest()V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    goto :goto_1

    :cond_5
    const-wide/16 v1, 0x0

    :goto_1
    iget-object p0, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v7, v1, v2}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->load(Lcom/deepalhome/launcher/music/ttml/LyricPayload;J)V

    :cond_6
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_7

    iget-object v0, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_7
    :goto_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v1, "$title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    const-string v1, "$singer"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    const-string v1, "$payload"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-nez v1, :cond_8

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    :cond_8
    move-object v6, v1

    iget-wide v4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$3:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/deepalhome/launcher/music/MusicAppWindow;->buildLyricRequestKey(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/util/s05/music/MusicSource;)Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentLyricRequestKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->finishLyricRequest()V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    goto :goto_3

    :cond_a
    const-wide/16 v1, 0x0

    :goto_3
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getLyricOffsetMs()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$getLyricRenderDelegate(Lcom/deepalhome/launcher/music/MusicAppWindow;)Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object p0

    invoke-virtual {p0, v7, v3, v4}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->load(Lcom/deepalhome/launcher/music/ttml/LyricPayload;J)V

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$getLyricRenderDelegate(Lcom/deepalhome/launcher/music/MusicAppWindow;)Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_b
    iget-object p0, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
