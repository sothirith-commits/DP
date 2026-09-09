.class public final Lcom/deepalhome/launcher/music/MusicInfoUtil$appleMusicBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string p0, "context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "intent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    const-string p0, "lyrics"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, ""

    if-nez p0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    :try_start_1
    const-string p0, "title"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    move-object p0, v6

    :goto_1
    if-nez p0, :cond_2

    move-object p0, p1

    :cond_2
    const-string v0, "format"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v6

    :goto_2
    if-nez v0, :cond_4

    move-object v3, p1

    goto :goto_3

    :cond_4
    move-object v3, v0

    :goto_3
    const-string v0, "lyrics_ttml"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v2, :cond_5

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    :cond_6
    sget-object p2, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    goto :goto_4

    :cond_7
    const-wide/16 v4, 0x0

    :goto_4
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    move-object p2, v1

    goto :goto_5

    :cond_8
    move-object p2, v6

    :goto_5
    if-eqz p2, :cond_9

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-static {v0, p2, v4, v5}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->access$normalizeAppleMusicLyric(Lcom/deepalhome/launcher/music/MusicInfoUtil;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    move-object v4, p2

    goto :goto_6

    :cond_9
    move-object v4, v6

    :goto_6
    sget-object p2, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;->INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "apple_music"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;->classifyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;

    move-result-object p2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    sget-object v1, Lcom/deepalhome/launcher/music/BroadcastLyricProvider;->APPLE:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    iget-object v2, p2, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->broadcastLyricCandidateStore:Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->recordPayload(Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    new-instance p1, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;

    iget-object v0, p2, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p1, v1, v2, v0, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;-><init>(JLcom/deepalhome/launcher/music/ttml/LyricPayload;Ljava/lang/String;)V

    sput-object p1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    :cond_a
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->titlesRoughlyMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    sput-object v6, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    iget-object v3, p2, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheLyricPayload(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)Z

    move-result p0

    if-eqz p0, :cond_d

    iget-object p0, p2, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->displayLyricOrNull(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricAvailable()V

    :cond_c
    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    iget-object p1, p2, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    :cond_d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_8
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_e

    const-string p1, "MusicInfoUtil"

    const-string p2, "AppleMusic lyric receive failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    return-void
.end method
