.class public final Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final addFavorMethod$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final applicationContext:Landroid/content/Context;

.field public volatile available:Z

.field public final cancelFavorMethod$delegate:Lkotlin/SynchronizedLazyImpl;

.field public lastKnownDuration:J

.field public lastKnownProgress:J

.field public lastPlayState:I

.field public lastSnapshot:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

.field public final listener:Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;

.field public final mainHandler:Landroid/os/Handler;

.field public final manager:Lcom/wt/musicsdk/MusicOnLineManager;

.field public final musicChangeListener:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;

.field public final playStateListener:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1;

.field public final progressListener:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;

.field public final seekMethod$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final serviceCallback:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1;

.field public started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->listener:Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->applicationContext:Landroid/content/Context;

    sget-object p1, Lcom/wt/musicsdk/MusicOnLineManager;->musicOnLineManager:Lcom/wt/musicsdk/MusicOnLineManager;

    if-nez p1, :cond_1

    const-class p1, Lcom/wt/musicsdk/MusicOnLineManager;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/wt/musicsdk/MusicOnLineManager;->musicOnLineManager:Lcom/wt/musicsdk/MusicOnLineManager;

    if-nez p2, :cond_0

    new-instance p2, Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-direct {p2}, Lcom/wt/musicsdk/MusicOnLineManager;-><init>()V

    sput-object p2, Lcom/wt/musicsdk/MusicOnLineManager;->musicOnLineManager:Lcom/wt/musicsdk/MusicOnLineManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p1, Lcom/wt/musicsdk/MusicOnLineManager;->musicOnLineManager:Lcom/wt/musicsdk/MusicOnLineManager;

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->mainHandler:Landroid/os/Handler;

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastPlayState:I

    new-instance p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->serviceCallback:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$serviceCallback$1;

    new-instance p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->musicChangeListener:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->playStateListener:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1;

    new-instance p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->progressListener:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;

    const-class v3, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const-string v4, "findSeekMethod"

    const-string v5, "findSeekMethod()Ljava/lang/reflect/Method;"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/16 v7, 0xa

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->seekMethod$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$addFavorMethod$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$addFavorMethod$2;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->addFavorMethod$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$cancelFavorMethod$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$cancelFavorMethod$2;-><init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->cancelFavorMethod$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static final access$findControlMethod(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 9

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "getMethods(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "getParameterTypes(...)"

    const/4 v6, 0x0

    if-ge v4, v2, :cond_1

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v8, v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_1
    const-string v0, ", owner="

    const-string v2, "MusicPrivateBridge"

    if-eqz v7, :cond_2

    const-string p0, "Favorite control method matched manager: name="

    invoke-static {p0, p1, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-class p1, Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v6, v7

    goto :goto_5

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->getControlInterface()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, v4

    :goto_3
    if-ge v3, v1, :cond_5

    aget-object v7, v4, v3

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v8, v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-object v7, v6

    :goto_4
    if-eqz v7, :cond_6

    const-string v1, "Favorite control method matched controlInterface: name="

    invoke-static {v1, p1, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :goto_5
    return-object v6
.end method

.method public static final access$updateAvailability(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->available:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->available:Z

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->listener:Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    sput-boolean p1, Lcom/deepalhome/launcher/music/MusicManager;->privateCanSeek:Z

    sput-boolean p1, Lcom/deepalhome/launcher/music/MusicManager;->privateCanCollect:Z

    sput-boolean p1, Lcom/deepalhome/launcher/music/MusicManager;->privateIsCollected:Z

    const/4 p1, 0x0

    sput-object p1, Lcom/deepalhome/launcher/music/MusicManager;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    sput-object p1, Lcom/deepalhome/launcher/music/MusicManager;->lastPrivatePackageName:Ljava/lang/String;

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->activeDataSource:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicManager;->switchActiveDataSource(Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->evaluateActiveDataSource()V

    :goto_0
    return-void
.end method

.method public static normalizeDurationMs(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x8ca0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    :cond_1
    return-wide p0
.end method

.method public static resolveSource(Lcom/wt/musicsdk/MusicInfo;)Lcom/deepalhome/launcher/util/s05/music/MusicSource;
    .locals 6

    iget-object v0, p0, Lcom/wt/musicsdk/MusicInfo;->des:Ljava/lang/String;

    iget-object v1, p0, Lcom/wt/musicsdk/MusicInfo;->albumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/wt/musicsdk/MusicInfo;->albumId:Ljava/lang/String;

    iget-object v3, p0, Lcom/wt/musicsdk/MusicInfo;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/wt/musicsdk/MusicInfo;->albumPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/wt/musicsdk/MusicInfo;->artist:Ljava/lang/String;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v4, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$resolveSource$combined$1;->INSTANCE:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$resolveSource$combined$1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v1, "|"

    const/16 v5, 0x1e

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cloud"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "netease"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "yun"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Cloud"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "kugou"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Kugou"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "qqmusic"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "QQ Music"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "qq music"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "bluetooth"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "bt"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Bluetooth"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    goto :goto_4

    :cond_4
    :goto_0
    sget-object p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    goto :goto_4

    :cond_5
    :goto_1
    sget-object p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->QQ_MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    goto :goto_4

    :cond_6
    :goto_2
    sget-object p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->KUGOU:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    goto :goto_4

    :cond_7
    :goto_3
    sget-object p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->CLOUD_MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    :goto_4
    return-object p0
.end method


# virtual methods
.method public final buildPlaybackState()Landroid/media/session/PlaybackState;
    .locals 10

    iget v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastPlayState:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-ne v4, v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    move v7, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const-wide/16 v1, 0x336

    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v3

    iget-wide v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastKnownProgress:J

    const-wide/16 v5, 0x0

    invoke-static {v0, v1, v5, v6}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final buildSnapshot(Lcom/wt/musicsdk/MusicInfo;)Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;
    .locals 8

    iget-wide v0, p1, Lcom/wt/musicsdk/MusicInfo;->duration:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->normalizeDurationMs(J)J

    move-result-wide v6

    new-instance v1, Lcom/deepalhome/launcher/music/Music;

    iget-object v0, p1, Lcom/wt/musicsdk/MusicInfo;->title:Ljava/lang/String;

    const-string v2, "getString(...)"

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    const v0, 0x7f130474

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :goto_2
    iget-object v0, p1, Lcom/wt/musicsdk/MusicInfo;->albumLocalPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_2
    :goto_3
    move-object v4, v0

    goto :goto_5

    :cond_3
    :goto_4
    iget-object v0, p1, Lcom/wt/musicsdk/MusicInfo;->albumPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    const-string v0, ""

    goto :goto_3

    :goto_5
    iget-object v0, p1, Lcom/wt/musicsdk/MusicInfo;->artist:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_6

    :cond_5
    move-object v5, v0

    goto :goto_7

    :cond_6
    :goto_6
    const v0, 0x7f130473

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v5, p0

    :goto_7
    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/music/Music;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;J)V

    new-instance p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->resolveSource(Lcom/wt/musicsdk/MusicInfo;)Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    move-result-object v2

    iget-boolean v3, p1, Lcom/wt/musicsdk/MusicInfo;->canSeek:Z

    iget-boolean v4, p1, Lcom/wt/musicsdk/MusicInfo;->canCollect:Z

    iget-boolean v5, p1, Lcom/wt/musicsdk/MusicInfo;->isCollected:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;-><init>(Lcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/util/s05/music/MusicSource;ZZZ)V

    return-object p0
.end method

.method public final callControl(Lkotlin/jvm/functions/Function0;)Z
    .locals 2

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->available:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "MusicPrivateBridge"

    const-string v1, "Private control failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_2

    move-object p0, p1

    :cond_2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final dispatchMusicInfo(Lcom/wt/musicsdk/MusicInfo;)V
    .locals 5

    iget-wide v0, p1, Lcom/wt/musicsdk/MusicInfo;->duration:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->normalizeDurationMs(J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Music private protocol original info: title="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/wt/musicsdk/MusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", artist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/wt/musicsdk/MusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/wt/musicsdk/MusicInfo;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", normalizedDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", des="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/wt/musicsdk/MusicInfo;->des:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", albumName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/wt/musicsdk/MusicInfo;->albumName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", albumId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/wt/musicsdk/MusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/wt/musicsdk/MusicInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", albumPath="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/wt/musicsdk/MusicInfo;->albumPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", albumLocalPath="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/wt/musicsdk/MusicInfo;->albumLocalPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", canSeek="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/wt/musicsdk/MusicInfo;->canSeek:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", canCollect="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/wt/musicsdk/MusicInfo;->canCollect:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isCollected="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/wt/musicsdk/MusicInfo;->isCollected:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPrivateBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->buildSnapshot(Lcom/wt/musicsdk/MusicInfo;)Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastSnapshot:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    iget-object v0, p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastKnownDuration:J

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->listener:Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;->onMusicInfoChanged(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;)V

    return-void
.end method

.method public final getControlInterface()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "iMusicOnLineControlInterface"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final handlePlayState(I)V
    .locals 4

    iget v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastPlayState:I

    iput p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastPlayState:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->buildPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-eq v0, p1, :cond_0

    const-string v0, "Music private protocol read result: playState="

    const-string v2, ", mappedState="

    invoke-static {p1, v0, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastKnownProgress:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicPrivateBridge"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->listener:Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-static {v1, p0}, Lcom/deepalhome/launcher/music/MusicManager;->publishPlaybackState(Landroid/media/session/PlaybackState;Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V

    return-void
.end method

.method public final handleProgress(JJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastKnownProgress:J

    iget-object v1, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {v1}, Lcom/wt/musicsdk/MusicOnLineManager;->getCurrentMusic()Lcom/wt/musicsdk/MusicInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->listener:Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->buildSnapshot(Lcom/wt/musicsdk/MusicInfo;)Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    move-result-object v1

    iget-object v3, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastSnapshot:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    iget-object v4, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->source:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    iget-object v6, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->source:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne v5, v6, :cond_0

    iget-boolean v5, v3, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canSeek:Z

    iget-boolean v6, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canSeek:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, v3, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canCollect:Z

    iget-boolean v6, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canCollect:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, v3, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->isCollected:Z

    iget-boolean v6, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->isCollected:Z

    if-ne v5, v6, :cond_0

    iget-object v3, v3, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastSnapshot:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastKnownDuration:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;->onMusicInfoChanged(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;)V

    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v1, p3, v3

    if-lez v1, :cond_2

    invoke-static/range {p3 .. p4}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->normalizeDurationMs(J)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastKnownDuration:J

    iget-object v1, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastSnapshot:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    const/4 v4, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/deepalhome/launcher/music/Music;->copy$default(Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;JILjava/lang/Object;)Lcom/deepalhome/launcher/music/Music;

    move-result-object v12

    const-string v3, "music"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v13, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->source:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    const-string v3, "source"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    iget-boolean v15, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canCollect:Z

    iget-boolean v4, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->isCollected:Z

    iget-boolean v14, v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canSeek:Z

    move-object v11, v3

    move/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;-><init>(Lcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/util/s05/music/MusicSource;ZZZ)V

    iput-object v3, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->lastSnapshot:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;->onMusicInfoChanged(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->buildPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->PRIVATE:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/music/MusicManager;->publishPlaybackState(Landroid/media/session/PlaybackState;Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;)V

    return-void
.end method

.method public final invokeControlMethod(Ljava/lang/reflect/Method;Ljava/lang/String;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->available:Z

    const/4 v1, 0x0

    const-string v2, "MusicPrivateBridge"

    const-string v3, "Private "

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " skipped: service unavailable"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " skipped: method not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->getControlInterface()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " skipped: control interface missing"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    :goto_0
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " success: owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", target="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of p2, p0, Lkotlin/Result$Failure;

    if-eqz p2, :cond_5

    move-object p0, p1

    :cond_5
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final post(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda3;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final seekTo(J)Z
    .locals 4

    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->available:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->seekMethod$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getParameterTypes(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v3, v2

    if-nez v3, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    aget-object v1, v2, v1

    :goto_0
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->manager:Lcom/wt/musicsdk/MusicOnLineManager;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "MusicPrivateBridge"

    const-string v0, "Private seekTo failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of p2, p0, Lkotlin/Result$Failure;

    if-eqz p2, :cond_5

    move-object p0, p1

    :cond_5
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method