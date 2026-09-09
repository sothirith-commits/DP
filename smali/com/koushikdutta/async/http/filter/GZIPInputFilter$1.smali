.class public final Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# instance fields
.field public flags:I

.field public hcrc:Z

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$emitter:Ljava/lang/Object;

.field public final synthetic val$parser:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Ljava/lang/Object;

    iput-object p2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Ljava/lang/Object;

    iput-object p3, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    iput p5, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/PushParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Ljava/lang/Object;

    iput-object p3, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public next()V
    .locals 7

    new-instance v0, Lcom/koushikdutta/async/PushParser;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Ljava/lang/Object;

    check-cast v1, Lcom/koushikdutta/async/DataEmitter;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/PushParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;I)V

    iget v3, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    and-int/lit8 v4, v3, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    iget-object p0, v0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v0, Lcom/koushikdutta/async/PushParser$UntilWaiter;

    invoke-direct {v0, v5}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    iput-byte v6, v0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->value:B

    iput-object v2, v0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    iget-object p0, v0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v0, Lcom/koushikdutta/async/PushParser$UntilWaiter;

    invoke-direct {v0, v5}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    iput-byte v6, v0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->value:B

    iput-object v2, v0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;I)V

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/PushParser;

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iput-boolean v6, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "t"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    iget-boolean p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    invoke-virtual {p1, p2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onError(Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 10

    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "response"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget-object v0, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/Throwable;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "HTTP "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lokhttp3/Response;->code:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    invoke-virtual {v2, p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onError(Ljava/lang/Throwable;Z)V

    return-void

    :cond_0
    iget-object p2, p2, Lretrofit2/Response;->body:Ljava/lang/Object;

    check-cast p2, Lcom/deepalhome/launcher/http/Wallpaper360Response;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/deepalhome/launcher/http/Wallpaper360Response;->getData()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/http/Wallpaper360Item;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/http/Wallpaper360Item;->toWallpaperItem()Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/deepalhome/launcher/http/Wallpaper360Response;->getTotal()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :cond_5
    move-object v5, v0

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_7

    if-eqz v5, :cond_6

    iget p2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge v1, p2, :cond_7

    :cond_6
    move v6, v0

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    move v6, p2

    :goto_2
    new-instance p2, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;-><init>(Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Ljava/lang/Integer;ZJLjava/util/List;)V

    const/4 p0, -0x2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v2, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;->onRemote(Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V

    return-void
.end method

.method public parsed(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, [B

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->peekShort([BLjava/nio/ByteOrder;)S

    move-result v0

    const/16 v1, -0x74e1

    iget-object v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/io/IOException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "unknown format (magic number %x)"

    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->report(Ljava/lang/Exception;)V

    new-instance p1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p0, p1}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    array-length v2, p1

    invoke-virtual {v0, p1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_2
    iget p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    new-instance p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;I)V

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/PushParser;

    invoke-virtual {p0, v1, p1}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->next()V

    :goto_1
    return-void
.end method
