.class public final Lcom/deepalhome/launcher/music/MusicInfoUtil$qqMusicBroadcastReceiver$1;
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
    .locals 8

    const-string p0, "context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "intent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    const-string p0, "com.tencent.qqmusiccar.action.PLAY_COMMAND_SEND_FOR_THIRD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lorg/json/JSONObject;

    const-string p1, "com.tencent.qqmusiccar.EXTRA_COMMAND_DATA"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, ""

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "command"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "data"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "method"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "update_lyric"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->access$updateFavCache(Lcom/deepalhome/launcher/music/MusicInfoUtil;Lorg/json/JSONObject;)V

    const-string p0, "lyric"

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->extractMusicKeyInfo(Lorg/json/JSONObject;)Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;

    move-result-object v0

    iget-object v3, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->singer:Ljava/lang/String;

    iget-wide v4, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->duration:J

    iget-object v0, v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->title:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->extractMusicKeyInfo(Lorg/json/JSONObject;)Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;

    move-result-object v3

    iget-object v4, v3, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->title:Ljava/lang/String;

    iget-object v3, v3, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->singer:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/deepalhome/launcher/music/MusicInfoUtil;->musicInfoCache:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    invoke-static {v0, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v4

    invoke-virtual {v4, v0, p0, v1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p2}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object p2

    invoke-virtual {p2, v3, p0, v1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->extractMusicKeyInfo(Lorg/json/JSONObject;)Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->access$mirrorLyricToCurrentMusic(Lcom/deepalhome/launcher/music/MusicInfoUtil;Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/deepalhome/launcher/music/BroadcastLyricProvider;->QQ:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    iget-object v4, p1, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->title:Ljava/lang/String;

    iget-object v5, p1, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->singer:Ljava/lang/String;

    const-string v7, "qq_music_broadcast"

    move-object v6, p0

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->access$recordBroadcastLegacyLyric(Lcom/deepalhome/launcher/music/MusicInfoUtil;Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricAvailable()V

    iget-object p2, p1, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->singer:Ljava/lang/String;

    iget-wide v1, p1, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->duration:J

    const-string p1, "qq_music_broadcast"

    invoke-static {p0, p2, p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->legacyLyricPayload$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    move-result-object p0

    invoke-static {p2, v0, v1, v2, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    const-string p2, "update_fav"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "key_is_fav"

    const-string p2, "is_fav"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_4

    return-void

    :cond_4
    const/4 p2, 0x1

    if-ne p0, p2, :cond_5

    move v1, p2

    :cond_5
    sget-object p0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->extractMusicKeyInfo(Lorg/json/JSONObject;)Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->singer:Ljava/lang/String;

    iget-object p2, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->title:Ljava/lang/String;

    :try_start_2
    iget-wide v2, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$MusicKeyInfo;->duration:J

    invoke-static {v2, v3, p2, p1, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheFavoriteState(JLjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p2, p1, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyFavChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_2
    return-void
.end method
