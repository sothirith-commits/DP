.class public final synthetic Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/deepalhome/launcher/music/ttml/LyricPayload;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/ttml/LyricPayload;I)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$2:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    const-string v1, "$title"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v2, "$singer"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$2:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    const-string v2, "$payload"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "toLowerCase(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentMusicKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sput-object p0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->rebuildTimeline(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    invoke-static {}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->dispatchCurrentSnapshot()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    const-string v1, "$title"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v2, "$singer"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;->f$2:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    const-string v2, "$payload"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "toLowerCase(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->currentMusicKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->finishLyricRequest()V

    sget-object v2, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p0, v0, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->load(Lcom/deepalhome/launcher/music/ttml/LyricPayload;J)V

    :cond_3
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
