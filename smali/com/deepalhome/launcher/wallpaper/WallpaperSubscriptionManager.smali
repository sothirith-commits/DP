.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

.field public static volatile activeCallOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;

.field public static volatile activeDownloadOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;

.field public static final handleLock:Ljava/lang/Object;

.field public static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final periodicRunnable:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$periodicRunnable$1;

.field public static final syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->handleLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$periodicRunnable$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$periodicRunnable$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->periodicRunnable:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$periodicRunnable$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$clearActiveCallOwner(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;JLretrofit2/Call;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->handleLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->activeCallOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-wide v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;->generation:J

    cmp-long p1, v1, p1

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;->call:Lretrofit2/Call;

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    sput-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->activeCallOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_1
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public static final access$downloadAndApply(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;ZJ)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    invoke-virtual {v1, p3, p4}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v4, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;->imageUrl:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-static {v4, v5, v4}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jpg"

    const/16 v6, 0x2e

    invoke-static {v4, v6, v5}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f

    invoke-static {v4, v5}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isSupportedExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "jpg"

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;->date:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x5f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;->source:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fileName"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->getDownloadDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->isDownloadComplete(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;->source:Ljava/lang/String;

    iget-object v6, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;->date:Ljava/lang/String;

    move-wide v0, p3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->applyLocalFile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_3
    sget-object v5, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    iget-object v6, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;->imageUrl:Ljava/lang/String;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->getDownloadDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v6, v4}, Lcom/deepalhome/launcher/util/DownLoadUtil;->createTask(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v7

    sget-object v5, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->handleLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v1, p3, p4}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    monitor-exit v5

    invoke-virtual {v7}, Lcom/liulishuo/okdownload/DownloadTask;->cancel()V

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;

    invoke-direct {v1, p3, p4, v7}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;-><init>(JLcom/liulishuo/okdownload/DownloadTask;)V

    sput-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->activeDownloadOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    new-instance v8, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;

    move-object v1, v8

    move-wide v2, p3

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;-><init>(JLjava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;Z)V

    invoke-virtual {v7, v8}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static final access$findWallpaper(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-eqz p1, :cond_a

    instance-of v0, p1, Lcom/google/gson/JsonObject;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    iget-object p1, p1, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    const-string v0, "wallpapers"

    invoke-virtual {p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p1, p1, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "source"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, p0

    :goto_2
    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const-string v3, "image"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v0, p0

    :goto_3
    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;

    invoke-direct {p0, v0, v2, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-object p0
.end method

.method public static final access$showToastIfCurrent(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;JZI)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda2;

    invoke-direct {p0, p4, p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda2;-><init>(IJ)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static applyLocalFile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    invoke-virtual {v0, p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    return-void

    :cond_1
    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static cancel()V
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    monitor-enter v0

    :try_start_0
    iget-wide v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->generationCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->generationCounter:J

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeGeneration:Ljava/lang/Long;

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;->onSettled:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iput-object v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->pendingForceRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;->onSettled:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    iput-object v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->pendingForceRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->handleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->activeCallOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;->call:Lretrofit2/Call;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lretrofit2/Call;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    sput-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->activeCallOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->activeDownloadOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;->task:Lcom/liulishuo/okdownload/DownloadTask;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/DownloadTask;->cancel()V

    :cond_3
    sput-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->activeDownloadOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static ensureMutualExclusion()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeBingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeUnsplashEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperSubscribeUnsplashEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static finishSync(J)V
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeGeneration:Ljava/lang/Long;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p0, v1, p0

    if-eqz p0, :cond_1

    :goto_0
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Idle;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Idle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :try_start_1
    iput-object p0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeGeneration:Ljava/lang/Long;

    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;->onSettled:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    iput-object p0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->pendingForceRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    iput-object p0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->pendingForceRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    if-nez p1, :cond_3

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Idle;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Idle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_1

    :cond_3
    :try_start_2
    iget-wide v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->generationCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->generationCounter:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeGeneration:Ljava/lang/Long;

    iput-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Restart;

    invoke-direct {p0, v1, v2, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Restart;-><init>(JLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    :goto_1
    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Idle;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Idle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    instance-of p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Restart;

    if-eqz p1, :cond_4

    const/4 p1, -0x2

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$FinishResult$Restart;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static isDownloadComplete(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->getDownloadDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".complete"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static requestSync$default(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;Ljava/lang/String;ZZLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$onReceive$1$1;I)V
    .locals 4

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->ensureMutualExclusion()V

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->selectedSource()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    if-eqz p4, :cond_e

    invoke-virtual {p4}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$onReceive$1$1;->invoke()Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    new-instance p5, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;-><init>(Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeGeneration:Ljava/lang/Long;

    if-eqz v0, :cond_b

    if-eqz p2, :cond_9

    iget-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->pendingForceRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    if-eqz p4, :cond_8

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$merge$mergedSettled$1;

    invoke-direct {v0, p4, p5}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$merge$mergedSettled$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;)V

    new-instance p5, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    iget-boolean v2, p4, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;->force:Z

    const/4 v3, 0x1

    if-nez v2, :cond_5

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    move p2, v1

    goto :goto_1

    :cond_5
    :goto_0
    move p2, v3

    :goto_1
    iget-boolean p4, p4, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;->showFeedback:Z

    if-nez p4, :cond_6

    if-eqz p3, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    invoke-direct {p5, p1, p2, v1, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;-><init>(Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;)V

    :cond_8
    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->pendingForceRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    sget-object p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_9
    if-eqz p4, :cond_a

    :try_start_1
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_a
    sget-object p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Skipped;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Skipped;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_2

    :cond_b
    :try_start_2
    iget-wide p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->generationCounter:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->generationCounter:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeGeneration:Ljava/lang/Long;

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->activeRequest:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    new-instance p4, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Start;

    invoke-direct {p4, p2, p3, p5}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Start;-><init>(JLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    move-object p2, p4

    :goto_2
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Skipped;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Skipped;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "WallpaperSubscription"

    const-string p2, "Skip sync, already running: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "WallpaperSubscription"

    const-string p2, "Queue force sync while running: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    instance-of p0, p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Start;

    if-eqz p0, :cond_e

    check-cast p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Start;

    iget-wide p0, p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Start;->generation:J

    iget-object p2, p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Start;->request:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->startSync(JLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;)V

    :cond_e
    :goto_3
    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public static selectedSource()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeBingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "bing"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeUnsplashEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unsplash"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static startSync(JLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;)V
    .locals 12

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    invoke-virtual {v0, p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->selectedSource()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    return-void

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "format(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->getDownloadDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    array-length v6, v1

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v1, v7

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getName(...)"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->isDownloadComplete(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-static {v8}, Lkotlin/io/FilesKt__UtilsKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isSupportedExtension(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object v8, v3

    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wallpaper_subscription_state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_applied_source"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "last_applied_date"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    sget-object v8, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$SkipAlreadyApplied;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$SkipAlreadyApplied;

    goto :goto_4

    :cond_5
    if-eqz v7, :cond_7

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v7, v3

    :goto_3
    if-eqz v7, :cond_7

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$ApplyLocal;

    invoke-direct {v1, v7}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$ApplyLocal;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$FetchRemote;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$FetchRemote;

    :goto_4
    sget-object v6, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$SkipNoSource;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$SkipNoSource;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    sget-object v6, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$SkipAlreadyApplied;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$SkipAlreadyApplied;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_5
    invoke-static {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    goto/16 :goto_6

    :cond_9
    instance-of v6, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$ApplyLocal;

    if-eqz v6, :cond_a

    check-cast v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$ApplyLocal;

    iget-object v3, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$ApplyLocal;->filePath:Ljava/lang/String;

    iget-boolean v6, p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;->showFeedback:Z

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->applyLocalFile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_a
    sget-object v6, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$FetchRemote;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionPolicy$Decision$FetchRemote;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;->force:Z

    if-nez v1, :cond_b

    const-string v1, "last_check_at"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v1, "last_check_source"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "last_check_date"

    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x1b7740

    cmp-long v0, v0, v6

    if-gez v0, :cond_b

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    return-void

    :cond_b
    iget-boolean v6, p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$Request;->showFeedback:Z

    sget-object p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    invoke-virtual {p2, p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wallpaper_subscription_state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_check_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_check_source"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_check_date"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/http/Server;->dailyApi:Lcom/deepalhome/launcher/http/DailyWallpaperApi;

    invoke-interface {v0}, Lcom/deepalhome/launcher/http/DailyWallpaperApi;->getAllWallpapers()Lretrofit2/Call;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->handleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2, p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_d

    monitor-exit v1

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    goto :goto_6

    :cond_d
    :try_start_1
    new-instance p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;

    invoke-direct {p2, p0, p1, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;-><init>(JLretrofit2/Call;)V

    sput-object p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->activeCallOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveCallOwner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    new-instance p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;

    move-object v1, p2

    move-wide v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_e
    :goto_6
    return-void
.end method


# virtual methods
.method public final init()V
    .locals 9

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->ensureMutualExclusion()V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->periodicRunnable:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$periodicRunnable$1;

    const-wide/32 v1, 0x1499700

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "app_init"

    const/4 v5, 0x0

    const/16 v8, 0xe

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->requestSync$default(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;Ljava/lang/String;ZZLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$onReceive$1$1;I)V

    return-void
.end method

.method public final onSubscriptionConfigChanged(Z)V
    .locals 7

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->ensureMutualExclusion()V

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->selectedSource()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->cancel()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->cancel()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "config_changed"

    const/4 v3, 0x1

    const/16 v6, 0x8

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->requestSync$default(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;Ljava/lang/String;ZZLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$onReceive$1$1;I)V

    :cond_1
    return-void
.end method
