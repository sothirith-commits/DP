.class public final Lcom/deepalhome/launcher/music/MusicInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

.field public static final broadcastLyricCandidateStore:Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;

.field public static final favCache:Ljava/util/Map;

.field public static final favChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final lyricAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final lyricPayloadCache:Ljava/util/Map;

.field public static final musicInfoCache:Ljava/util/Map;

.field public static volatile pendingAppleMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;

.field public static volatile pendingAppleMusicPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;

.field public static volatile pendingLunaLrc:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;

.field public static volatile pendingLunaTtmlPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;

.field public static volatile pendingQqMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicFavoriteState;

.field public static volatile pendingQqMusicTtmlPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$musicInfoCache$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$musicInfoCache$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "synchronizedMap(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->musicInfoCache:Ljava/util/Map;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$lyricPayloadCache$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$lyricPayloadCache$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadCache:Ljava/util/Map;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$favCache$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$favCache$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->favCache:Ljava/util/Map;

    new-instance v0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil$broadcastLyricCandidateStore$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil$broadcastLyricCandidateStore$1;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;-><init>(Lcom/deepalhome/launcher/music/MusicInfoUtil$broadcastLyricCandidateStore$1;I)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->broadcastLyricCandidateStore:Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$qqMusicBroadcastReceiver$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$qqMusicBroadcastReceiver$1;-><init>()V

    new-instance v1, Lcom/deepalhome/launcher/music/MusicInfoUtil$qqMusicTtmlBroadcastReceiver$1;

    invoke-direct {v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$qqMusicTtmlBroadcastReceiver$1;-><init>()V

    new-instance v3, Lcom/deepalhome/launcher/music/MusicInfoUtil$qqMusicCollectBroadcastReceiver$1;

    invoke-direct {v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil$qqMusicCollectBroadcastReceiver$1;-><init>()V

    new-instance v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1;

    invoke-direct {v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1;-><init>()V

    new-instance v5, Lcom/deepalhome/launcher/music/MusicInfoUtil$lunaMusicBroadcastReceiver$1;

    invoke-direct {v5}, Lcom/deepalhome/launcher/music/MusicInfoUtil$lunaMusicBroadcastReceiver$1;-><init>()V

    new-instance v6, Lcom/deepalhome/launcher/music/MusicInfoUtil$lunaMusicTtmlBroadcastReceiver$1;

    invoke-direct {v6}, Lcom/deepalhome/launcher/music/MusicInfoUtil$lunaMusicTtmlBroadcastReceiver$1;-><init>()V

    new-instance v7, Lcom/deepalhome/launcher/music/MusicInfoUtil$appleMusicBroadcastReceiver$1;

    invoke-direct {v7}, Lcom/deepalhome/launcher/music/MusicInfoUtil$appleMusicBroadcastReceiver$1;-><init>()V

    new-instance v8, Lcom/deepalhome/launcher/music/MusicInfoUtil$appleMusicFavoriteBroadcastReceiver$1;

    invoke-direct {v8}, Lcom/deepalhome/launcher/music/MusicInfoUtil$appleMusicFavoriteBroadcastReceiver$1;-><init>()V

    new-instance v9, Lcom/deepalhome/launcher/music/MusicInfoUtil$lunaCollectBroadcastReceiver$1;

    invoke-direct {v9}, Lcom/deepalhome/launcher/music/MusicInfoUtil$lunaCollectBroadcastReceiver$1;-><init>()V

    new-instance v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v10, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v10, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v10, Lcom/deepalhome/launcher/music/MusicInfoUtil;->favChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v10

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "com.tencent.qqmusiccar.action.PLAY_COMMAND_SEND_FOR_THIRD"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "com.tencent.qqmusiccar.LYRIC_TTML_BROADCAST"

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->registerExportedReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    const-string v0, "com.tencent.qqmusiccar.COLLECT_BROADCAST"

    invoke-static {v3, v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->registerExportedReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.maxmpz.audioplayer.STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.maxmpz.audioplayer.TRACK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.maxmpz.audioplayer.TPOS_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "com.apple.android.music.playback.action.LYRICS_CHANGED"

    invoke-static {v7, v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->registerExportedReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    const-string v0, "com.apple.android.music.playback.action.FAVORITE_STATE_CHANGED"

    invoke-static {v8, v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->registerExportedReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v3, "com.luna.music.LYRIC_TTML_BROADCAST"

    const-string v4, "com.luna.music.COLLECT_BROADCAST"

    const-string v7, "com.luna.music.LYRIC_BROADCAST"

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$findLunaBroadcastLrc(Lcom/deepalhome/launcher/music/MusicInfoUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingLunaLrc:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;

    if-eqz p2, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;->title:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    iget-object v1, p2, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->titlesRoughlyMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p2, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;->lrc:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1
    sget-object p2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->broadcastLyricCandidateStore:Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;

    sget-object v0, Lcom/deepalhome/launcher/music/BroadcastLyricProvider;->LUNA:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    invoke-virtual {p2, v0, p0, p1}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->find(Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->displayLyricOrNull(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    move-object p0, p2

    goto :goto_3

    :cond_2
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :goto_0
    move-object p0, v0

    goto :goto_3

    :cond_3
    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_8

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->musicInfoCache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_5

    move-object p2, p1

    :cond_5
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    move-object p1, p0

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_7
    move-object v1, p2

    :cond_8
    :goto_2
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    move-object p0, v1

    :goto_3
    return-object p0
.end method

.method public static final access$findPreferredPayloadForPrimaryChain(Lcom/deepalhome/launcher/music/MusicInfoUtil;Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    sget-object v2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    const/4 p0, 0x1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, p0

    new-instance p0, Lkotlin/io/LinesSequence;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lkotlin/io/LinesSequence;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$findLockedTtmlPayload$$inlined$filterIsInstance$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil$findLockedTtmlPayload$$inlined$filterIsInstance$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    if-eqz p0, :cond_1

    :goto_1
    move-object v1, p0

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->findCachedLyricPayload(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of p1, p0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-object v1
.end method

.method public static final access$findQqBroadcastLrc(Lcom/deepalhome/launcher/music/MusicInfoUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/deepalhome/launcher/music/BroadcastLyricProvider;->QQ:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->broadcastLyricCandidateStore:Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;

    invoke-virtual {v0, p2, p0, p1}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->find(Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->displayLyricOrNull(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :goto_0
    move-object p2, v0

    goto :goto_3

    :cond_1
    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_6

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->musicInfoCache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_3

    move-object p2, p1

    :cond_3
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, p0

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_5
    move-object v1, p2

    :cond_6
    :goto_2
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    move-object p2, v1

    :goto_3
    return-object p2
.end method

.method public static final access$innerLoadMusicInfo$onLrclibResult(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput-object p6, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz p6, :cond_2

    invoke-static {p6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p4, p5, p6}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->innerLoadMusicInfo$dispatchLyric(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p4, p5}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->innerLoadMusicInfo$dispatchError(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final access$mirrorLyricToCurrentMusic(Lcom/deepalhome/launcher/music/MusicInfoUtil;Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->title:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->singer:Ljava/lang/String;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-wide v8, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->duration:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    const/4 v6, 0x1

    const-wide/16 v12, 0x1388

    const/4 v14, 0x0

    if-lez v0, :cond_3

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v15

    cmp-long v15, v15, v10

    if-gtz v15, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v15

    sub-long/2addr v15, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v15

    cmp-long v15, v15, v12

    if-gtz v15, :cond_2

    goto :goto_0

    :cond_2
    move v6, v14

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, ""

    invoke-static {v6}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v12

    invoke-virtual {v12, v3, v1, v14}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v6}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v3

    invoke-virtual {v3, v4, v1, v14}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    const-string v3, "accurateTitle"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "accurateSinger"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_3

    :cond_5
    if-lez v0, :cond_6

    move-wide v1, v8

    :cond_6
    cmp-long v3, v1, v10

    if-gtz v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v6, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;

    invoke-direct {v6, v5, v7}, Lcom/deepalhome/launcher/music/MusicManager$StableMusicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/deepalhome/launcher/music/MusicManager;->stableMusicCache:Lcom/deepalhome/launcher/music/MusicManager$stableMusicCache$1;

    invoke-virtual {v12, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v12, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v4, v12, :cond_c

    sget-object v4, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateMusic:Lcom/deepalhome/launcher/music/Music;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v13

    cmp-long v6, v13, v10

    if-lez v6, :cond_9

    if-gtz v3, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v10, 0x1388

    cmp-long v1, v1, v10

    if-gtz v1, :cond_c

    :cond_9
    :goto_1
    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    if-lez v0, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v0

    move-wide v8, v0

    :goto_2
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v11}, Lcom/deepalhome/launcher/music/Music;->copy$default(Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;JILjava/lang/Object;)Lcom/deepalhome/launcher/music/Music;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivateMusic:Lcom/deepalhome/launcher/music/Music;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/music/MusicManager;->persistLastMusic(Lcom/deepalhome/launcher/music/Music;Landroid/media/MediaMetadata;)V

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne v1, v12, :cond_c

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->notifyInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public static final access$normalizeAppleMusicLyric(Lcom/deepalhome/launcher/music/MusicInfoUtil;Ljava/lang/String;J)Ljava/lang/String;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/DistinctSequence;

    move-result-object v0

    iget-object v1, v0, Lkotlin/sequences/DistinctSequence;->source:Lkotlin/sequences/Sequence;

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v5, 0x5d

    const/16 v6, 0xa

    const-string v7, "["

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v8, v0, Lkotlin/sequences/DistinctSequence;->keySelector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_0

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v6, 0x3

    if-gt v6, v3, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    invoke-static {v2, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_2
    move-object/from16 v0, p1

    goto/16 :goto_4

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/DistinctSequence;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil$convertPlainLyricsToPseudoLrc$lines$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil$convertPlainLyricsToPseudoLrc$lines$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/DistinctSequence;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil$convertPlainLyricsToPseudoLrc$lines$2;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil$convertPlainLyricsToPseudoLrc$lines$2;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    move-wide/from16 v8, p2

    invoke-static {v8, v9, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    if-ltz v3, :cond_5

    check-cast v9, Ljava/lang/String;

    int-to-long v11, v3

    const-wide/16 v13, 0xfa0

    mul-long/2addr v11, v13

    add-long/2addr v11, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v13, 0x3e8

    int-to-long v13, v13

    div-long v15, v11, v13

    const/16 v4, 0x3c

    int-to-long v5, v4

    div-long v17, v15, v5

    rem-long/2addr v15, v5

    rem-long/2addr v11, v13

    const/16 v4, 0xa

    int-to-long v5, v4

    div-long/2addr v11, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v5, v6, v11}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02d:%02d.%02d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v4

    move v3, v10

    goto :goto_3

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v9, "\n"

    const/4 v10, 0x0

    const/16 v13, 0x3e

    invoke-static/range {v8 .. v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0
.end method

.method public static final access$recordBroadcastLegacyLyric(Lcom/deepalhome/launcher/music/MusicInfoUtil;Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->broadcastLyricCandidateStore:Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "title"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "artist"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4, p2, p5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->legacyLyricPayload$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->recordPayload(Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    :goto_0
    return-void
.end method

.method public static final access$updateFavCache(Lcom/deepalhome/launcher/music/MusicInfoUtil;Lorg/json/JSONObject;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "is_fav"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "key_is_fav"

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->extractMusicKeyInfo(Lorg/json/JSONObject;)Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;

    move-result-object p1

    iget-object v0, p1, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->singer:Ljava/lang/String;

    iget-wide v2, p1, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->duration:J

    invoke-static {v0, v1, v2, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildFavKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object p0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->favCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, ""

    invoke-static {p0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public static broadcastLyricProviderForPackage(Ljava/lang/String;)Lcom/deepalhome/launcher/music/BroadcastLyricProvider;
    .locals 1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.tencent.qqmusiccar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/music/BroadcastLyricProvider;->QQ:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    goto :goto_1

    :sswitch_1
    const-string v0, "com.apple.android.music"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/music/BroadcastLyricProvider;->APPLE:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    goto :goto_1

    :sswitch_2
    const-string v0, "com.arcvideo.car.luna.music"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :sswitch_3
    const-string v0, "com.luna.music"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/music/BroadcastLyricProvider;->LUNA:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5fb9a2c0 -> :sswitch_3
        -0x29578d3b -> :sswitch_2
        -0x1047a99b -> :sswitch_1
        -0xe791a7b -> :sswitch_0
    .end sparse-switch
.end method

.method public static buildFavKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KEY_FAV_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KEY_LYRIC_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KEY_LYRIC_RELAXED_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "toLowerCase(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cacheFavoriteState(JLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p2, p3, p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildFavKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->favCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    invoke-static {p1}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object p1

    invoke-virtual {p1, p0, p4}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->musicInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static cacheLyric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p3, p4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->musicInfoCache:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p3, p2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static cacheLyricPayload(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)Z
    .locals 6

    invoke-static {p0, p1, p2, p3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    :cond_0
    instance-of v3, v3, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v3, p4, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    if-eqz v3, :cond_2

    move-object v3, p4

    check-cast v3, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "primary_chain"

    iget-object v3, v3, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;->source:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "apple_music_"

    invoke-static {v3, v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "luna_"

    invoke-static {v3, v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "qq_music_"

    invoke-static {v3, v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v4

    :cond_5
    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->displayLyricOrNull(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_6

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p4, p2, p3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheLyric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return v4
.end method

.method public static consumePendingAppleMusicPayload(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;->receivedAtMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    sput-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;

    return-object v1

    :cond_1
    iget-object v2, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;->title:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;->title:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->titlesRoughlyMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sput-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;

    iget-object p0, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicPayload;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static consumePendingLunaLrc(Lcom/deepalhome/launcher/music/Music;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingLunaLrc:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;->title:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;->title:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    sput-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingLunaLrc:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;

    iget-object p0, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;->lrc:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static extractMusicKeyInfo(Lorg/json/JSONObject;)Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;
    .locals 8

    const-string v0, "key_title"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "total_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "key_artist"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "singer"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    const v4, 0x7f13035f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v4, "getString(...)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v0, p0, v1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v3
.end method

.method public static findBroadcastLyricCandidate(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->resolvePreferredMusicPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->broadcastLyricProviderForPackage(Ljava/lang/String;)Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->broadcastLyricProviderForPackage(Ljava/lang/String;)Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->broadcastLyricCandidateStore:Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;

    invoke-virtual {v2, v0, v1, p0}, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore;->find(Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object p0

    return-object p0
.end method

.method public static findCachedLyricPayload(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;
    .locals 6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    instance-of p0, v0, Lcom/deepalhome/launcher/music/ttml/LyricPayload$Ttml;

    if-eqz p0, :cond_4

    sget-object v1, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;->INSTANCE:Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlClassifier;

    sget-object v3, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/deepalhome/launcher/music/MusicManager;->mediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->resolvePreferredMusicPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    aget-object v4, v3, v1

    const-string v5, "com.apple.android.music"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.luna.music"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.arcvideo.car.luna.music"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.tencent.qqmusiccar"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method public static getTitle(Lcom/deepalhome/launcher/music/Music;)Landroid/text/SpannableStringBuilder;
    .locals 6

    const v0, 0x7f130376

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f060338

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f6147ae    # 0.88f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v4, v3}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, p0, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public static innerLoadMusicInfo(Lcom/deepalhome/launcher/music/Music;ZZLcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object/from16 v10, p3

    invoke-static {v0, v1, v2, v10}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->startPrimaryChain(Lcom/deepalhome/launcher/music/Music;ZZLcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    return-void

    :cond_0
    move-object/from16 v10, p3

    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v16, Lcom/deepalhome/launcher/music/LrclibMusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/LrclibMusicInfoUtil;

    new-instance v9, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;

    move-object v3, v9

    move-object v4, v12

    move-object v5, v14

    move-object v6, v15

    move-object v7, v13

    move-object v8, v11

    move-object/from16 v17, v9

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://lrclib.net/api/search?track_name="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&artist_name="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    const-string v3, "User-Agent"

    const-string v4, "DeepalHome/Android"

    invoke-virtual {v5, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    sget-object v4, Lcom/deepalhome/launcher/music/LrclibMusicInfoUtil;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lokhttp3/internal/connection/RealCall;

    invoke-direct {v5, v4, v3, v2}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    new-instance v2, Landroidx/cardview/widget/CardView$1;

    const/16 v3, 0xf

    const/4 v4, 0x0

    move-object/from16 v6, v17

    invoke-direct {v2, v6, v0, v3, v4}, Landroidx/cardview/widget/CardView$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v5, v2}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V

    new-instance v2, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;

    move-object v3, v2

    move-object/from16 v4, p3

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;-><init>(Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->startPrimaryChain(Lcom/deepalhome/launcher/music/Music;ZZLcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    return-void
.end method

.method public static final innerLoadMusicInfo$dispatchError(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    :cond_0
    return-void
.end method

.method public static final innerLoadMusicInfo$dispatchLyric(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onLyricLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static loadMusicInfo(Lcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "KEY_LYRIC_TITLE_ONLY_"

    const-string v2, "toLowerCase(...)"

    const-string v3, ", sanitizedSinger="

    const-string v4, ", duration="

    const-string v5, ", singer="

    const-string v6, "MusicInfoUtil"

    const-string v7, "Lyrics matching param: title="

    const-string v8, "Skip song info query: title="

const-string v9, "Start loading song info: title="

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->sanitizeMusic(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/Music;

    move-result-object v10

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->sanitizeSingerForSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v6

    goto/16 :goto_d

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-nez v12, :cond_1

    const-string v12, "null"

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v1

    move-object v15, v2

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", coverType="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->resolveFavoriteState(Lcom/deepalhome/launcher/music/Music;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onFavLoaded(Z)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f130474

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v13

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "KEY_COVER_"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ""

    sget-object v13, Lcom/deepalhome/launcher/music/MusicInfoUtil;->musicInfoCache:Ljava/util/Map;

    if-eqz v8, :cond_7

    :try_start_1
    sget-object v8, Lcom/deepalhome/launcher/music/MusicCoverStore;->INSTANCE:Lcom/deepalhome/launcher/music/MusicCoverStore;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/music/MusicCoverStore;->normalizeCoverString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v12}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    const/4 v8, 0x0

    invoke-interface {v2, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-interface {v13, v1, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_4
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v16, 0x1

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    invoke-interface {v0, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onCoverLoaded(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    invoke-interface {v0, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onCoverLoaded(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    instance-of v2, v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v1

    move/from16 v19, v2

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    invoke-static {v8, v14, v1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v9

    invoke-static {v12}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v9

    iget-object v9, v9, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v21, v15

    const/4 v15, 0x0

    invoke-interface {v9, v1, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_d

    invoke-static {v12}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v9

    iget-object v9, v9, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9, v2, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_d

    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v12}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v9

    iget-object v9, v9, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9, v8, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_9
    invoke-interface {v13, v1, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v13, v2, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :cond_a
    invoke-static {v9}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v13, v8, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v9, v12

    :cond_c
    :goto_5
    check-cast v9, Ljava/lang/String;

    :cond_d
    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", lyricKey="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lyricRelaxedKey="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lyricTitleOnlyKey="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v3, v8

    goto :goto_7

    :cond_e
    const-string v3, "N/A"

    :goto_7
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", hasCachedLyric="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_f

    invoke-interface {v0, v9}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onLyricLoaded(Ljava/lang/String;)V

    :goto_8
    move-object v9, v6

    const/4 v13, 0x0

    goto/16 :goto_b

    :cond_f
    invoke-static {v10}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->findBroadcastLyricCandidate(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v11

    invoke-static {v4, v5, v11, v12, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheLyricPayload(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)Z

    invoke-static {v10}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->findCachedLyricPayload(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object v4

    if-nez v4, :cond_10

    goto :goto_9

    :cond_10
    move-object v3, v4

    :goto_9
    invoke-static {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->displayLyricOrNull(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-interface {v0, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onLyricLoaded(Ljava/lang/String;)V

    sget-object v4, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricAvailable()V

    :cond_11
    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v11

    invoke-static {v4, v5, v11, v12, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    goto :goto_8

    :cond_12
    invoke-static {v10}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->consumePendingLunaLrc(Lcom/deepalhome/launcher/music/Music;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v6

    :try_start_2
    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v21

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v7, v20

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-static {v6, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :cond_13
    :goto_a
    invoke-static {v12}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v7

    const/4 v13, 0x0

    invoke-virtual {v7, v4, v3, v13}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v12}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v4

    invoke-virtual {v4, v5, v3, v13}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {v12}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v13}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_14
    invoke-interface {v0, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onLyricLoaded(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricAvailable()V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v6

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v11

    const-string v12, "luna_pending"

    invoke-static {v3, v11, v12}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->legacyLyricPayload$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    move-result-object v3

    invoke-static {v4, v5, v6, v7, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    goto :goto_b

    :cond_15
    move-object v9, v6

    const/4 v13, 0x0

    invoke-static {v10}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->consumePendingAppleMusicPayload(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheLyricPayload(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)Z

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->displayLyricOrNull(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-interface {v0, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onLyricLoaded(Ljava/lang/String;)V

    :cond_16
    invoke-static {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->displayLyricOrNull(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricAvailable()V

    :cond_17
    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    :goto_b
    move v14, v13

    goto :goto_c

    :cond_18
    move v14, v4

    :goto_c
    if-nez v19, :cond_19

    if-eqz v14, :cond_1a

    :cond_19
    new-instance v3, Lcom/blankj/utilcode/util/PermissionUtils;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, v18

    iput-object v4, v3, Lcom/blankj/utilcode/util/PermissionUtils;->mSingleCallback:Ljava/lang/Object;

    iput-object v0, v3, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/lang/Object;

    iput-object v1, v3, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/io/Serializable;

    iput-object v2, v3, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/io/Serializable;

    iput-object v8, v3, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/io/Serializable;

    iput-object v10, v3, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/lang/Object;

    move/from16 v0, v19

    invoke-static {v10, v0, v14, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->innerLoadMusicInfo(Lcom/deepalhome/launcher/music/Music;ZZLcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_e

    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadMusicInfo exception, ignored: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_e
    return-void
.end method

.method public static loadMusicInfoPayload(Lcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->resolveFavoriteState(Lcom/deepalhome/launcher/music/Music;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;->onFavLoaded(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "KEY_COVER_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    sget-object v4, Lcom/deepalhome/launcher/music/MusicCoverStore;->INSTANCE:Lcom/deepalhome/launcher/music/MusicCoverStore;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/music/MusicCoverStore;->normalizeCoverString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v5}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->musicInfoCache:Ljava/util/Map;

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_0
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;->onCoverLoaded(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;->onCoverLoaded(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    instance-of v3, v3, Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v3, 0x0

    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->findBroadcastLyricCandidate(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheLyricPayload(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)Z

    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->findCachedLyricPayload(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v4, v5

    :goto_3
    invoke-interface {v1, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;->onLyricPayloadLoaded(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    goto/16 :goto_c

    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->findCachedLyricPayload(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v1, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;->onLyricPayloadLoaded(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    goto/16 :goto_c

    :cond_7
    sget-object v4, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingQqMusicTtmlPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;

    const-string v9, " currentTitle="

    const-string v10, "MusicInfoUtil"

    const-wide/16 v11, 0x3a98

    if-nez v4, :cond_8

    :goto_4
    move-object v4, v7

    goto/16 :goto_6

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object v15, v9

    iget-wide v8, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;->receivedAtMs:J

    sub-long/2addr v13, v8

    cmp-long v8, v13, v11

    if-lez v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QQ TTML pending expired: title="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;->title:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v7, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingQqMusicTtmlPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;

    move-object v4, v7

    move-object v9, v15

    goto :goto_6

    :cond_9
    iget-object v8, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;->title:Ljava/lang/String;

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;->title:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->titlesRoughlyMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    move-object v9, v15

    goto :goto_5

    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QQ TTML pending consumed: title="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v15

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v7, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingQqMusicTtmlPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;

    iget-object v4, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    goto :goto_6

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "QQ TTML pending not matched: pendingTitle="

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicTtmlPayload;->title:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_6
    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheLyricPayload(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)Z

    invoke-interface {v1, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;->onLyricPayloadLoaded(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    goto/16 :goto_c

    :cond_c
    sget-object v4, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingLunaTtmlPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;

    if-nez v4, :cond_d

    move-object v4, v7

    goto/16 :goto_9

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-wide v6, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;->receivedAtMs:J

    sub-long/2addr v13, v6

    cmp-long v6, v13, v11

    if-lez v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Luna TTML pending expired: title="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;->title:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sput-object v4, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingLunaTtmlPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;

    :goto_7
    const/4 v4, 0x0

    goto :goto_9

    :cond_e
    iget-object v6, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;->title:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;->title:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->titlesRoughlyMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_8

    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Luna TTML pending consumed: title="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    sput-object v6, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingLunaTtmlPayload:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;

    iget-object v4, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    goto :goto_9

    :cond_10
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Luna TTML pending not matched: pendingTitle="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaTtmlPayload;->title:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_9
    if-eqz v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheLyricPayload(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)Z

    invoke-interface {v1, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;->onLyricPayloadLoaded(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    goto/16 :goto_c

    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->consumePendingAppleMusicPayload(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheLyricPayload(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)Z

    invoke-interface {v1, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;->onLyricPayloadLoaded(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    goto/16 :goto_c

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v9

    invoke-static {v4, v6, v9, v10}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v7

    iget-object v7, v7, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    const/4 v9, 0x0

    invoke-interface {v7, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_13

    invoke-static {v5}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v7

    iget-object v7, v7, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_13
    if-nez v7, :cond_17

    sget-object v7, Lcom/deepalhome/launcher/music/MusicInfoUtil;->musicInfoCache:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_14

    move-object v4, v5

    :cond_14
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_15

    goto :goto_a

    :cond_15
    move-object v5, v4

    :goto_a
    move-object v7, v5

    goto :goto_b

    :cond_16
    move-object v7, v4

    :cond_17
    :goto_b
    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cache"

    invoke-static {v7, v4, v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->legacyLyricPayload$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;->onLyricPayloadLoaded(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    goto :goto_c

    :cond_18
    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->consumePendingLunaLrc(Lcom/deepalhome/launcher/music/Music;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v4, v7, v8}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheLyric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "luna_pending"

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->legacyLyricPayload$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;->onLyricPayloadLoaded(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    :goto_c
    const/4 v6, 0x0

    goto :goto_d

    :cond_19
    move v6, v5

    :goto_d
    if-nez v3, :cond_1a

    if-eqz v6, :cond_1b

    :cond_1a
    new-instance v4, Lcom/koushikdutta/async/Util$8;

    const/16 v5, 0x10

    invoke-direct {v4, v2, v1, v0, v5}, Lcom/koushikdutta/async/Util$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v3, v6, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->innerLoadMusicInfo(Lcom/deepalhome/launcher/music/Music;ZZLcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    :cond_1b
    return-void
.end method

.method public static notifyFavChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->favChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "title"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "singer"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-object v2, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v3, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p0, p1, p2}, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static notifyLyricAvailable()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V
    .locals 8

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/music/MusicInfoUtil$OnLyricPayloadAvailableListener;

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/deepalhome/launcher/music/MusicInfoUtil$OnLyricPayloadAvailableListener;->onLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static registerExportedReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-static {v0, p0, v1, p1}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    return-void
.end method

.method public static resolveFavoriteState(Lcom/deepalhome/launcher/music/Music;)Z
    .locals 9

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingQqMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicFavoriteState;

    const-wide/16 v1, 0x3a98

    const/4 v3, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicFavoriteState;->receivedAtMs:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v1

    if-lez v4, :cond_2

    sput-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingQqMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicFavoriteState;

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicFavoriteState;->title:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicFavoriteState;->title:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->titlesRoughlyMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    sput-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingQqMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicFavoriteState;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingQqMusicFavoriteState;->isFavorited:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v6, v7, v4, v5, v8}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheFavoriteState(JLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v4, v5, v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyFavChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;->receivedAtMs:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v1

    if-lez v1, :cond_6

    sput-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;->title:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->titlesRoughlyMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    sput-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;->isFavorited:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v4, v5, v0, v1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheFavoriteState(JLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyFavChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildFavKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->favCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_3

    :cond_a
    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :goto_3
    return p0
.end method

.method public static sanitizeMusic(Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/Music;
    .locals 9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    :cond_3
    const-string v1, "getString(...)"

    if-nez v0, :cond_4

    const v0, 0x7f130474

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v4, v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, v0

    :cond_8
    :goto_4
    if-nez v2, :cond_9

    const v0, 0x7f130473

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_5

    :cond_9
    move-object v6, v2

    :goto_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    :goto_6
    move-object v5, v0

    goto :goto_7

    :cond_b
    const-string v0, ""

    goto :goto_6

    :goto_7
    new-instance v0, Lcom/deepalhome/launcher/music/Music;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    const-wide/16 v7, 0x0

    invoke-static {v1, v2, v7, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v7

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/music/Music;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static sanitizeSingerForSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "singer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const v0, 0x7f130473

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f130471

    invoke-static {v3, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object p0, v1

    :cond_2
    return-object p0
.end method

.method public static startPrimaryChain(Lcom/deepalhome/launcher/music/Music;ZZLcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V
    .locals 8

    sget-object v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;

    new-instance v2, Lokhttp3/ConnectionSpec$Builder;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p3, v2, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:Ljava/lang/Object;

    iput-object p0, v2, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:Ljava/lang/Object;

    iput-boolean p1, v2, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    iput-boolean p2, v2, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u9648\u4e00\u53d1\u513f"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u4e0a\u6749\u5347"

    const-string v4, "WANDS"

    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object v3

    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://mobilecdn.kugou.com/api/v3/search/song?format=json&keyword="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&page=1&pagesize=100&showtype=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    invoke-virtual {p3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p3

    sget-object v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lokhttp3/internal/connection/RealCall;

    const/4 v1, 0x0

    invoke-direct {v7, v0, p3, v1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    new-instance p3, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;

    move-object v1, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;-><init>(Lokhttp3/ConnectionSpec$Builder;Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Lcom/deepalhome/launcher/music/Music;ZZ)V

    invoke-virtual {v7, p3}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static titlesRoughlyMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public static updateFavoriteState(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "title"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "singer"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, p3, p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildFavKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->favCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    invoke-static {p1}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object p1

    invoke-virtual {p1, p0, p4}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Z)V

    invoke-static {p2, p3, p4}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyFavChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
