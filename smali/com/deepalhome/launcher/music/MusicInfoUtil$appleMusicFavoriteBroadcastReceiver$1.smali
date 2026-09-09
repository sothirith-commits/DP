.class public final Lcom/deepalhome/launcher/music/MusicInfoUtil$appleMusicFavoriteBroadcastReceiver$1;
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
    .locals 4

    const-string p0, "context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "intent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;->INSTANCE:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;->parse(Landroid/content/Intent;)Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$FavoriteState;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$FavoriteState;->title:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$FavoriteState;->likeState:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 p0, 0x2

    if-eq v0, p0, :cond_4

    const/4 p0, 0x3

    if-ne v0, p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    move p0, v1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_6
    iget-boolean p0, p0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$FavoriteState;->isFavorited:Z

    :goto_2
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    sget-object p2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    new-instance p2, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p2, p1, p0, v0, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;-><init>(Ljava/lang/String;ZJ)V

    sput-object p2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;

    return-void

    :cond_8
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_9

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->titlesRoughlyMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance p2, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p2, p1, p0, v0, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;-><init>(Ljava/lang/String;ZJ)V

    sput-object p2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;

    return-void

    :cond_9
    sget-object p1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    sput-object p2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->pendingAppleMusicFavoriteState:Lcom/deepalhome/launcher/music/MusicInfoUtil$PendingAppleMusicFavoriteState;

    sget-object p1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, p2, v1, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheFavoriteState(JLjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    invoke-static {p1, p2, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyFavChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_b

    const-string p1, "MusicInfoUtil"

    const-string p2, "AppleMusic favorite receive failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method
