.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic $callback:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

.field public final synthetic $hadCache:Z

.field public final synthetic $key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;ZI)V
    .locals 0

    iput p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$callback:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$hadCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "t"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$callback:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$hadCache:Z

    invoke-virtual {p1, p2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onError(Ljava/lang/Throwable;Z)V

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "t"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$callback:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$hadCache:Z

    invoke-virtual {p1, p2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onError(Ljava/lang/Throwable;Z)V

    :cond_1
    return-void

    :pswitch_1
    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "t"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$callback:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$hadCache:Z

    invoke-virtual {p1, p2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onError(Ljava/lang/Throwable;Z)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget v3, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "call"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "response"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget-object v3, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    iget-object v6, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$callback:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "HTTP "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lokhttp3/Response;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$hadCache:Z

    invoke-virtual {v6, v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onError(Ljava/lang/Throwable;Z)V

    goto/16 :goto_5

    :cond_0
    iget-object v2, v2, Lretrofit2/Response;->body:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/gson/JsonElement;

    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->access$parseOpenListWallpapers(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/google/gson/JsonElement;I)Ljava/util/List;

    move-result-object v13

    check-cast v2, Lcom/google/gson/JsonElement;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "total"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v5

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPage()I

    move-result v7

    invoke-virtual {v4}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPageSize()I

    move-result v4

    mul-int/2addr v4, v7

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v4, v2, :cond_4

    :goto_3
    move v10, v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v8, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;-><init>(Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Ljava/lang/Integer;ZJLjava/util/List;)V

    const/4 v1, -0x2

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v3, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v6, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onRemote(Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V

    :goto_5
    return-void

    :pswitch_0
    const-string v3, "call"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "response"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget-object v3, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    iget-object v6, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$callback:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    if-nez v5, :cond_5

    new-instance v0, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "HTTP "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lokhttp3/Response;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$hadCache:Z

    invoke-virtual {v6, v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onError(Ljava/lang/Throwable;Z)V

    goto/16 :goto_a

    :cond_5
    iget-object v2, v2, Lretrofit2/Response;->body:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/gson/JsonElement;

    const/4 v5, 0x2

    invoke-static {v0, v3, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->access$parseOpenListWallpapers(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/google/gson/JsonElement;I)Ljava/util/List;

    move-result-object v13

    check-cast v2, Lcom/google/gson/JsonElement;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "total"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    new-instance v3, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_7

    :cond_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    :goto_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v7, 0x1

    xor-int/2addr v5, v7

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPage()I

    move-result v5

    invoke-virtual {v4}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPageSize()I

    move-result v4

    mul-int/2addr v4, v5

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_8

    :cond_8
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    :goto_8
    if-ge v4, v2, :cond_9

    move v10, v7

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    move v10, v2

    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v8, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;-><init>(Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Ljava/lang/Integer;ZJLjava/util/List;)V

    const/4 v1, -0x2

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v6, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onRemote(Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V

    :goto_a
    return-void

    :pswitch_1
    const-string v3, "call"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "response"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget-object v0, v3, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    iget-object v5, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$callback:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    if-nez v4, :cond_a

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lokhttp3/Response;->code:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$hadCache:Z

    invoke-virtual {v5, v2, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onError(Ljava/lang/Throwable;Z)V

    goto/16 :goto_1e

    :cond_a
    iget-object v0, v2, Lretrofit2/Response;->body:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_22

    instance-of v2, v0, Lcom/google/gson/JsonObject;

    if-nez v2, :cond_b

    goto/16 :goto_1c

    :cond_b
    :try_start_0
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v2, "wallpapers"

    iget-object v0, v0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    if-nez v0, :cond_c

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_b
    move-object v12, v0

    goto/16 :goto_1d

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v4, Lcom/google/gson/JsonObject;

    const/4 v7, 0x0

    if-nez v6, :cond_e

    goto/16 :goto_1a

    :cond_e
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v6, "image"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :catch_0
    move-exception v0

    goto/16 :goto_1b

    :cond_f
    move-object v6, v7

    :goto_d
    if-nez v6, :cond_10

    goto/16 :goto_1a

    :cond_10
    const-string v8, "thumb"

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_11
    move-object v8, v7

    :goto_e
    if-nez v8, :cond_12

    move-object v11, v6

    goto :goto_f

    :cond_12
    move-object v11, v8

    :goto_f
    const-string v8, "title"

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :cond_13
    move-object v8, v7

    :goto_10
    const-string v9, ""

    if-nez v8, :cond_14

    move-object v8, v9

    :cond_14
    :try_start_1
    const-string v10, "date"

    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    goto :goto_11

    :cond_15
    move-object v10, v7

    :goto_11
    if-nez v10, :cond_16

    move-object v10, v9

    :cond_16
    const-string v12, "source"

    invoke-virtual {v4, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    if-eqz v12, :cond_17

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    goto :goto_12

    :cond_17
    move-object v12, v7

    :goto_12
    if-nez v12, :cond_18

    move-object v12, v9

    :cond_18
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x19

    const/4 v15, 0x1

    if-gt v13, v14, :cond_19

    :goto_13
    move-object/from16 v16, v8

    goto :goto_14

    :cond_19
    invoke-static {v10}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/2addr v13, v15

    if-eqz v13, :cond_1a

    move-object/from16 v16, v10

    goto :goto_14

    :cond_1a
    invoke-static {v14, v8}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    :goto_14
    const-string v8, "fileSize"

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    if-eqz v8, :cond_1b

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v13

    :goto_15
    move-wide/from16 v17, v13

    goto :goto_16

    :cond_1b
    const-wide/16 v13, 0x0

    goto :goto_15

    :goto_16
    const-string v8, "resolution"

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    :cond_1c
    if-nez v7, :cond_1d

    move-object v7, v9

    :cond_1d
    const-string v4, "x"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x6

    const/4 v13, 0x0

    invoke-static {v7, v4, v13, v8}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-static {v13, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1e

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    invoke-static {v7}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_17

    :cond_1e
    move v7, v13

    :goto_17
    invoke-static {v15, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1f

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-static {v4}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_18

    :cond_1f
    move v4, v13

    :goto_18
    const-string v8, "jpg"

    const/16 v13, 0x2e

    invoke-static {v6, v13, v8}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v14, 0x3f

    invoke-static {v8, v14}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/2addr v14, v15

    if-eqz v14, :cond_20

    invoke-static {v12}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/2addr v14, v15

    if-eqz v14, :cond_20

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x5f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v21, v8

    goto :goto_19

    :cond_20
    move-object/from16 v21, v9

    :goto_19
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    new-instance v25, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    const/16 v24, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1438

    move-object/from16 v8, v25

    move-object/from16 v10, v16

    move v15, v7

    move/from16 v16, v4

    move-object/from16 v19, v6

    invoke-direct/range {v8 .. v24}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v7, v25

    :goto_1a
    if-eqz v7, :cond_d

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    :cond_21
    move-object v0, v2

    goto/16 :goto_b

    :goto_1b
    const-string v2, "WallpaperListRepository"

    const-string v4, "Failed to parse daily wallpapers"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_b

    :cond_22
    :goto_1c
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_b

    :goto_1d
    new-instance v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v7, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;->$key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    const/4 v9, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;-><init>(Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Ljava/lang/Integer;ZJLjava/util/List;)V

    const/4 v1, -0x2

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onRemote(Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V

    :goto_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
