.class public final Lcom/deepalhome/launcher/music/MusicInfoUtil$lunaMusicBroadcastReceiver$1;
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

    const-string p0, "lrc"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "title"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "artist"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p0, :cond_6

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    move-object p1, v0

    :goto_0
    const-string v6, ""

    if-nez p1, :cond_2

    move-object p1, v6

    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    move-object p2, v6

    goto :goto_1

    :cond_4
    move-object p2, v0

    :goto_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;

    invoke-direct {v0, p1, p2, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingLunaLrc:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingLunaLrc;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    sget-object v1, Lcom/deepalhome/launcher/music/BroadcastLyricProvider;->LUNA:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    const-string v5, "luna_broadcast"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->access$recordBroadcastLegacyLyric(Lcom/deepalhome/launcher/music/MusicInfoUtil;Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->buildLyricRelaxedKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, p0, v5}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v6}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v2

    invoke-virtual {v2, v3, p0, v5}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricAvailable()V

    const-string v2, "luna_broadcast"

    invoke-static {p0, p1, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->legacyLyricPayload$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    move-result-object p0

    invoke-static {p1, p2, v0, v1, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_6
    :goto_2
    return-void

    :goto_3
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_4
    return-void
.end method
