.class public final synthetic Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const-string v0, "$imageView"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "this$0"

    iget-object v4, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iget-object v5, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    iget-object v6, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iget-object v7, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    move-object v9, v7

    check-cast v9, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    const-string p0, "$key"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v11, v5

    check-cast v11, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    const-string p0, "$callback"

    invoke-static {p0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    const-string p0, "$hadCache"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v12, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p0, v9, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    :cond_0
    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getSource()Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    move-result-object v0

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPage()I

    move-result v1

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPageSize()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    const-string v3, "/pic/\u52a8\u6001\u58c1\u7eb8"

    invoke-interface {v0, v3, v1, v2}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->listFiles(Ljava/lang/String;II)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;

    const/4 v13, 0x1

    move-object v8, v1

    move-object v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;ZI)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/http/Server;->dailyApi:Lcom/deepalhome/launcher/http/DailyWallpaperApi;

    invoke-interface {v0}, Lcom/deepalhome/launcher/http/DailyWallpaperApi;->getAllWallpapers()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;

    const/4 v13, 0x0

    move-object v8, v1

    move-object v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;ZI)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPage()I

    move-result v1

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPageSize()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    const-string v3, "/pic/\u9759\u6001\u58c1\u7eb8"

    invoke-interface {v0, v3, v1, v2}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->listFiles(Ljava/lang/String;II)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;

    const/4 v13, 0x2

    move-object v8, v1

    move-object v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetchDailyData$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;ZI)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPage()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPageSize()I

    move-result v2

    mul-int v13, v2, v0

    sget-object v0, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getCategoryId()I

    move-result v2

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPage()I

    move-result v3

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->getPageSize()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v3, v1

    mul-int/2addr v3, v4

    sget-object v0, Lcom/deepalhome/launcher/http/Server;->api:Lcom/deepalhome/launcher/http/Api;

    invoke-interface {v0, v2, v3, v4}, Lcom/deepalhome/launcher/http/Api;->getWallpaperList(III)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    move-object v8, v1

    move-object v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;ZI)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_0
    invoke-virtual {p0, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$bindKey"

    check-cast v7, Ljava/lang/String;

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;->videoFrameCache:Landroid/util/LruCache;

    check-cast v5, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    invoke-virtual {v6, v5, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;->loadFallbackCover(Lclub/deepal/launcher3/wallpaper/WallpaperItem;Landroid/widget/ImageView;)V

    :cond_5
    return-void

    :pswitch_1
    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/String;

    const-string p0, "$url"

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    iget-object v0, v5, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;->glideOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    :cond_6
    return-void

    :pswitch_2
    sget p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    check-cast v7, Lcom/deepalhome/launcher/floating/CachedIcon;

    const-string p0, "$icon"

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v4, p0}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->cacheIcon(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    check-cast v5, Ljava/lang/String;

    const/16 v0, 0xd

    invoke-direct {p0, v6, v2, v5, v0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    const-string p0, "$sceneName"

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$listener"

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$timeout"

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

    invoke-static {v4, v7, v6, v5, v2}, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->observe$finish(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;)V

    return-void

    :pswitch_4
    check-cast v6, Lcom/deepalhome/launcher/launcher/LauncherFragment;

    check-cast v5, Landroid/content/ContentResolver;

    check-cast v4, Landroid/net/Uri;

    check-cast v7, Ljava/lang/String;

    invoke-static {v4, v7, v6, v5}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$knDBkIL3idkn7y1wAzlcizYJ70Q(Landroid/net/Uri;Ljava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/ContentResolver;)V

    return-void

    :pswitch_5
    const-string p0, "$isDismissed"

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$mediaPlayer"

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lcom/deepalhome/launcher/splash/SplashFragment;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    iput-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaPlayer;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    :cond_a
    iput-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/hjq/window/EasyWindow;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/hjq/window/EasyWindow;->cancel()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
