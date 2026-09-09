.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/DownloadListener;
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic $generation:J

.field public final synthetic $showFeedback:Z

.field public final synthetic $source:Ljava/lang/String;

.field public final synthetic $targetDate:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$generation:J

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$targetDate:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$showFeedback:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$generation:J

    iput-boolean p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$showFeedback:Z

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$targetDate:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public connectEnd(IILcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "responseHeaderFields"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public connectStart(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "requestHeaderFields"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "headerFields"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "headerFields"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "info"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "cause"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "info"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "t"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    iget-wide v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$generation:J

    invoke-static {v0, v1, v2, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->access$clearActiveCallOwner(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;JLretrofit2/Call;)V

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    invoke-virtual {v3, v1, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "WallpaperSubscription"

    const-string v4, "Failed to fetch wallpapers"

    invoke-static {v3, v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$showFeedback:Z

    const p1, 0x7f1304a5

    invoke-static {v0, v1, v2, p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->access$showToastIfCurrent(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;JZI)V

    :cond_2
    invoke-static {v1, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 8

    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "response"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    iget-wide v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$generation:J

    invoke-static {v0, v1, v2, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->access$clearActiveCallOwner(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;JLretrofit2/Call;)V

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    invoke-virtual {p1, v1, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p2, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$showFeedback:Z

    const p1, 0x7f1304a5

    invoke-static {v0, v1, v2, p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->access$showToastIfCurrent(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;JZI)V

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    return-void

    :cond_1
    const/4 p1, -0x2

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v7, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$targetDate:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-boolean v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$showFeedback:Z

    iget-wide v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$generation:J

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$source:Ljava/lang/String;

    move-object v0, v7

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;Lretrofit2/Response;Ljava/lang/String;Z)V

    invoke-interface {p1, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V
    .locals 7

    const-string v0, "task"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    iget-wide v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$generation:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->handleLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->activeDownloadOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    monitor-exit v3

    goto :goto_1

    :cond_0
    :try_start_1
    iget-wide v5, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;->generation:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    iget-object v1, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;->task:Lcom/liulishuo/okdownload/DownloadTask;

    if-ne v1, p1, :cond_1

    const/4 v1, 0x0

    sput-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->activeDownloadOwner:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$ActiveDownloadOwner;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    :goto_1
    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    iget-wide v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$generation:J

    invoke-virtual {v1, v2, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$source:Ljava/lang/String;

    :try_start_2
    sget p3, Lkotlin/Result;->$r8$clinit:I

    new-instance p3, Ljava/io/File;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->getDownloadDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".complete"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    sget p3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_2
    sget-object p2, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string p1, "getAbsolutePath(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$targetDate:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;

    iget-object v3, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;->source:Ljava/lang/String;

    iget-object v4, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;->date:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$showFeedback:Z

    iget-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$generation:J

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->applyLocalFile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3
    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    const-string p1, "WallpaperSubscription"

    invoke-static {p2}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->stringValueOf$2(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Download failed: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-wide p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$generation:J

    iget-boolean p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$showFeedback:Z

    const v1, 0x7f1304a5

    invoke-static {v0, p1, p2, p3, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->access$showToastIfCurrent(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;JZI)V

    :cond_4
    iget-wide p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$fetchAndApply$1;->$generation:J

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    return-void

    :goto_3
    monitor-exit v3

    throw p0
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0

    const-string p0, "task"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
