.class public final Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

.field public static currentLyricRequestKey:Ljava/lang/String;

.field public static currentMusic:Lcom/deepalhome/launcher/music/Music;

.field public static currentMusicKey:Ljava/lang/String;

.field public static currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

.field public static currentTimeline:Ljava/util/List;

.field public static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static lastBroadcastState:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;

.field public static lastPlaybackState:Landroid/media/session/PlaybackState;

.field public static final lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$lyricPayloadAvailableListener$1;

.field public static lyricRequestToken:J

.field public static final mainHandler:Landroid/os/Handler;

.field public static missingTargetLogged:Z

.field public static final musicChangedListener:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicChangedListener$1;

.field public static final musicSettingsChangedListener:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicSettingsChangedListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentTimeline:Ljava/util/List;

    new-instance v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$lyricPayloadAvailableListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$lyricPayloadAvailableListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$lyricPayloadAvailableListener$1;

    new-instance v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicChangedListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicChangedListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->musicChangedListener:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicChangedListener$1;

    sget-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicSettingsChangedListener$1;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicSettingsChangedListener$1;

    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->musicSettingsChangedListener:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicSettingsChangedListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchBroadcast(Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;)V
    .locals 12

    iget-object v0, p0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;->title:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;->currentLyric:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;->nextLyric:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    new-instance p0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;

    invoke-direct {p0, v0, v1, v2}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->lastBroadcastState:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    sget-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/config/UserConfig;->getLyricBroadcastTargetPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getLyricBroadcastTargetReceiverClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.deepal.ACTION_LYRIC_UPDATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/UserConfig;->getLyricBroadcastDeliveryMode()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    if-eq v7, v8, :cond_7

    const/4 v11, 0x2

    if-eq v7, v11, :cond_4

    const/4 v4, 0x0

    sput-boolean v4, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->missingTargetLogged:Z

    goto :goto_3

    :cond_4
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    :goto_1
    sget-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "component"

    invoke-static {v0, v4, v5}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->logMissingTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v6, v9

    goto :goto_4

    :cond_7
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "package"

    invoke-static {v0, v4, v5}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->logMissingTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string v4, "title"

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "currentLyric"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "nextLyric"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    if-nez v6, :cond_9

    return-void

    :cond_9
    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getLyricBroadcastTargetPermission()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_7
    instance-of v1, v0, Lkotlin/Result$Failure;

    xor-int/2addr v1, v8

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lkotlin/Unit;

    sput-object p0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->lastBroadcastState:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;

    :cond_b
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_c

    const-string v0, "LyricBroadcast"

    const-string v1, "Lyric broadcast dispatch failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method public static dispatchCurrentSnapshot()V
    .locals 13

    sget-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentMusic:Lcom/deepalhome/launcher/music/Music;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;

    sget-object v2, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentTimeline:Ljava/util/List;

    sget-object v3, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->lastPlaybackState:Landroid/media/session/PlaybackState;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v6

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v6

    goto :goto_0

    :cond_2
    move-wide v6, v4

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "lines"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, ""

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    :goto_1
    move-object v4, v8

    goto/16 :goto_5

    :cond_3
    invoke-static {v6, v7, v4, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;

    iget-wide v6, v1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;->startMs:J

    cmp-long v1, v4, v6

    const/4 v6, 0x0

    if-gtz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;

    iget-wide v9, v1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;->endMs:J

    cmp-long v1, v4, v9

    if-ltz v1, :cond_5

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    move v7, v6

    :goto_2
    if-gt v7, v1, :cond_8

    add-int v9, v7, v1

    ushr-int/lit8 v9, v9, 0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;

    iget-wide v11, v10, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;->startMs:J

    cmp-long v11, v4, v11

    if-gez v11, :cond_6

    add-int/lit8 v1, v9, -0x1

    goto :goto_2

    :cond_6
    iget-wide v10, v10, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;->endMs:J

    cmp-long v7, v4, v10

    if-ltz v7, :cond_7

    add-int/lit8 v7, v9, 0x1

    goto :goto_2

    :cond_7
    move v6, v9

    goto :goto_3

    :cond_8
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-static {v7, v6, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v6

    :goto_3
    invoke-static {v6, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v6, 0x1

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;

    new-instance v4, Lcom/deepalhome/launcher/music/broadcast/LyricLineSnapshot;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;->text:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v2, v8

    :goto_4
    if-nez v2, :cond_b

    move-object v2, v3

    :cond_b
    iget-object v1, v1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;->text:Ljava/lang/String;

    invoke-direct {v4, v1, v2, v6}, Lcom/deepalhome/launcher/music/broadcast/LyricLineSnapshot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_5
    new-instance v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_c

    iget-object v2, v4, Lcom/deepalhome/launcher/music/broadcast/LyricLineSnapshot;->currentLyric:Ljava/lang/String;

    goto :goto_6

    :cond_c
    move-object v2, v8

    :goto_6
    if-nez v2, :cond_d

    move-object v2, v3

    :cond_d
    if-eqz v4, :cond_e

    iget-object v8, v4, Lcom/deepalhome/launcher/music/broadcast/LyricLineSnapshot;->nextLyric:Ljava/lang/String;

    :cond_e
    if-nez v8, :cond_f

    goto :goto_7

    :cond_f
    move-object v3, v8

    :goto_7
    invoke-direct {v1, v0, v2, v3}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->dispatchBroadcast(Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;)V

    return-void
.end method

.method public static logMissingTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->missingTargetLogged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->missingTargetLogged:Z

    const-string v0, "Skip lyric broadcast because "

    const-string v1, " target is incomplete. package="

    const-string v2, " receiver="

    invoke-static {v0, p0, v1, p1, v2}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LyricBroadcast"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static rebuildTimeline(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V
    .locals 19

    sget-object v0, Lcom/deepalhome/launcher/music/LyricChineseConverter;->INSTANCE:Lcom/deepalhome/launcher/music/LyricChineseConverter;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getLyricTraditionalChineseEnabled()Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/music/LyricChineseConverter;->convertPayload(Lcom/deepalhome/launcher/music/ttml/LyricPayload;Z)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    iget-object v0, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;->displayLrc:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/DistinctSequence;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$buildLegacyTimeline$entries$1;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$buildLegacyTimeline$entries$1;

    const-string v6, "transform"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lkotlin/sequences/SequencesKt___SequencesKt$flatMapIndexed$2;->INSTANCE:Lkotlin/sequences/SequencesKt___SequencesKt$flatMapIndexed$2;

    const-string v7, "iterator"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v7, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;

    invoke-direct {v7, v0, v1, v6, v2}, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlin/io/LinesSequence;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v7}, Lkotlin/io/LinesSequence;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$buildLegacyTimeline$$inlined$compareBy$1;

    invoke-direct {v1}, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$buildLegacyTimeline$$inlined$compareBy$1;-><init>()V

    new-instance v6, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;I)V

    new-instance v1, Lkotlin/io/FileTreeWalk;

    const/4 v7, 0x2

    invoke-direct {v1, v7, v0, v6}, Lkotlin/io/FileTreeWalk;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_5

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    if-ltz v5, :cond_2

    check-cast v7, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;

    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;

    if-eqz v5, :cond_1

    iget-wide v9, v5, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->startMs:J

    move-wide v15, v9

    goto :goto_1

    :cond_1
    const-wide v15, 0x7fffffffffffffffL

    :goto_1
    new-instance v5, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;

    iget-wide v13, v7, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->startMs:J

    iget-object v12, v7, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->text:Ljava/lang/String;

    move-object v11, v5

    invoke-direct/range {v11 .. v16}, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v2

    :cond_3
    instance-of v1, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    iget-object v0, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    iget-object v0, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;->lines:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    if-ltz v5, :cond_7

    check-cast v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-object v5, v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->text:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    if-eqz v5, :cond_5

    iget-wide v11, v5, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    goto :goto_3

    :cond_5
    const-wide v11, 0x7fffffffffffffffL

    :goto_3
    const-wide/16 v13, 0x0

    iget-wide v3, v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    invoke-static {v3, v4, v13, v14}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v3

    const-wide/16 v13, 0x1

    add-long/2addr v13, v3

    move-wide/from16 v17, v3

    iget-wide v2, v7, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    invoke-static {v2, v3, v13, v14}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    invoke-static {v11, v12, v13, v14}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(JJ)J

    move-result-wide v13

    new-instance v2, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;

    move-object v9, v2

    move-wide/from16 v11, v17

    invoke-direct/range {v9 .. v14}, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineLine;-><init>(Ljava/lang/String;JJ)V

    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v5, v8

    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_8
    move-object v0, v1

    :goto_5
    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentTimeline:Ljava/util/List;

    return-void

    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
