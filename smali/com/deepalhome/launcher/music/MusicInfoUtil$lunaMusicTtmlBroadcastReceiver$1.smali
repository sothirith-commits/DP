.class public final Lcom/deepalhome/launcher/music/MusicInfoUtil$lunaMusicTtmlBroadcastReceiver$1;
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
    .locals 13

    const-string p0, "MusicInfoUtil"

    const-string v0, "Luna TTML applied: currentTitle="

    const-string v1, "Luna TTML pending due to title mismatch: broadcastTitle="

    const-string v2, "Luna TTML cached as pending: no current music yet, title="

    const-string v3, "Luna TTML broadcast received: title="

    const-string v4, "context"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    const-string p1, "ttml"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_c

    :cond_0
    move-object p1, v4

    :goto_0
    const-string v5, ""

    if-nez p1, :cond_1

    move-object v8, v5

    goto :goto_1

    :cond_1
    move-object v8, p1

    :goto_1
    :try_start_1
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-string p1, "title"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v4

    :goto_2
    if-nez p1, :cond_4

    move-object p1, v5

    :cond_4
    const-string v6, "artist"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v4

    :goto_3
    if-nez p2, :cond_6

    move-object p2, v5

    :cond_6
    sget-object v6, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-static {v6, p1, p2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->access$findLunaBroadcastLrc(Lcom/deepalhome/launcher/music/MusicInfoUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v6, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;->INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v12, :cond_7

    move-object v7, v5

    goto :goto_4

    :cond_7
    move-object v7, v12

    :goto_4
    const-string v9, "broadcast"

    const-string v11, "luna_music"

    move-object v6, p1

    move-object v10, v12

    invoke-static/range {v6 .. v11}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;->classifyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;

    move-result-object v5

    iget-object v6, v5, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    instance-of v7, v6, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    if-eqz v7, :cond_8

    move-object v7, v6

    check-cast v7, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    goto :goto_5

    :cond_8
    move-object v7, v4

    :goto_5
    if-eqz v7, :cond_9

    iget-object v7, v7, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    if-eqz v7, :cond_9

    invoke-static {v7}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->stats(Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;)Lcom/deepalhome/launcher/music/ttml/TtmlDocumentStats;

    move-result-object v7

    goto :goto_6

    :cond_9
    move-object v7, v4

    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " artist="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;->mode:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fallback="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-eqz v12, :cond_b

    invoke-static {v12}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    move v9, v3

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/deepalhome/launcher/music/ttml/AppleMusicLyricClassification;->fallbackReason:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " lines="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_c

    iget v5, v7, Lcom/deepalhome/launcher/music/ttml/TtmlDocumentStats;->lineCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_9

    :cond_c
    move-object v5, v4

    :goto_9
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " timedLines="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_d

    iget v5, v7, Lcom/deepalhome/launcher/music/ttml/TtmlDocumentStats;->timedLineCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_a

    :cond_d
    move-object v5, v4

    :goto_a
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " tokens="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_e

    iget v5, v7, Lcom/deepalhome/launcher/music/ttml/TtmlDocumentStats;->tokenCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_b

    :cond_e
    move-object v5, v4

    :goto_b
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/deepalhome/launcher/music/BroadcastLyricProvider;->LUNA:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    sget-object v7, Lcom/deepalhome/launcher/music/MusicInfoUtil;->broadcastLyricCandidateStore:Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;

    invoke-virtual {v7, v5, p1, p2, v6}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->recordPayload(Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    new-instance p2, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-direct {p2, v7, v8, v6, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;-><init>(JLcom/deepalhome/launcher/music/ttml/LyricPayload;Ljava/lang/String;)V

    sput-object p2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingLunaTtmlPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;

    sget-object p2, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object p2

    if-nez p2, :cond_f

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_10

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->titlesRoughlyMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " currentTitle="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    sput-object v4, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingLunaTtmlPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3, v6}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheLyricPayload(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " changed="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " source="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/deepalhome/launcher/music/ttml/LyricPayload;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_12

    invoke-static {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->displayLyricOrNull(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricAvailable()V

    :cond_11
    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2, v6}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    :cond_12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :goto_c
    sget p2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_d
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string p2, "LunaMusic TTML receive failed"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    return-void
.end method
