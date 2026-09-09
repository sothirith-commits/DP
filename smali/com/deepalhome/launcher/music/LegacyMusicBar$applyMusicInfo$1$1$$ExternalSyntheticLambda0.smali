.class public final synthetic Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/music/MusicBar;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$key"

    iget-object v2, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$cover"

    iget-object v3, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicBar;->access$getCurrentMusicKey$p(Lcom/deepalhome/launcher/music/MusicBar;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicBar;->access$getCoverInfoRequestToken$p(Lcom/deepalhome/launcher/music/MusicBar;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$2:J

    cmp-long p0, v4, v6

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, Lcom/deepalhome/launcher/music/MusicBar;->access$updateCover(Lcom/deepalhome/launcher/music/MusicBar;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v2, "$key"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    const-string v3, "$payload"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v3, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricRequestToken:J

    iget-wide v5, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$2:J

    cmp-long p0, v3, v5

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->finishLyricRequest()V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v3

    goto :goto_1

    :cond_5
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getLyricOffsetMs()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$getLyricRenderDelegate(Lcom/deepalhome/launcher/music/MusicAppWindow;)Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object p0

    invoke-virtual {p0, v2, v5, v6}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->load(Lcom/deepalhome/launcher/music/ttml/LyricPayload;J)V

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$getLyricRenderDelegate(Lcom/deepalhome/launcher/music/MusicAppWindow;)Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_6
    iget-object p0, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v2, "$key"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    const-string v3, "$payload"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    iget-wide v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRequestToken:J

    iget-wide v5, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$2:J

    cmp-long p0, v3, v5

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->finishLyricRequest()V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v3

    goto :goto_3

    :cond_9
    const-wide/16 v3, 0x0

    :goto_3
    iget-object p0, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v2, v3, v4}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->load(Lcom/deepalhome/launcher/music/ttml/LyricPayload;J)V

    :cond_a
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object v0, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_b
    :goto_4
    return-void

    :pswitch_2
    const-string v0, "$this_runCatching"

    iget-object v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$key"

    iget-object v2, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$cover"

    iget-object v3, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/deepalhome/launcher/music/LegacyMusicBar;->currentMusicKey:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    iget-wide v4, v1, Lcom/deepalhome/launcher/music/LegacyMusicBar;->coverInfoRequestToken:J

    iget-wide v6, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;->f$2:J

    cmp-long p0, v4, v6

    if-eqz p0, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->updateCover(Ljava/lang/Object;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
