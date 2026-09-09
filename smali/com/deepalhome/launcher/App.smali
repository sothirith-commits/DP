.class public final Lcom/deepalhome/launcher/App;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/App$Companion;

.field public static final hasPassedSplash:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final densityLifecycleCallbacks:Lcom/umeng/analytics/pro/l$1;

.field public final packageChangeReceiver:Lcom/deepalhome/launcher/App$packageChangeReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/App$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/App$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/App;->Companion:Lcom/deepalhome/launcher/App$Companion;

    const-string v0, "nc"

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "nb"

    :try_start_1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/deepalhome/launcher/App;->hasPassedSplash:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/umeng/analytics/pro/l$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/umeng/analytics/pro/l$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/App;->densityLifecycleCallbacks:Lcom/umeng/analytics/pro/l$1;

    new-instance v0, Lcom/deepalhome/launcher/App$packageChangeReceiver$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/App$packageChangeReceiver$1;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/App;->packageChangeReceiver:Lcom/deepalhome/launcher/App$packageChangeReceiver$1;

    return-void
.end method

.method public static applyConfiguredDensity(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "getDisplayMetrics(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const-string v3, "getConfiguration(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/App;->updateDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/App;->updateDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public static updateDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getAppDensityDpi()I

    move-result v0

    const/16 v1, 0xa0

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float v2, v1, v2

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Landroid/util/DisplayMetrics;->density:F

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/App;->applyConfiguredDensity(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string p1, "config"

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/theme/UIModeManager;->applyNightMode(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final onCreate()V
    .locals 8

    const/4 v0, 0x2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/blankj/utilcode/util/Utils;->init(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/App;->applyConfiguredDensity(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/App;->densityLifecycleCallbacks:Lcom/umeng/analytics/pro/l$1;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/sun/security/provider/JavaKeyStoreProvider;

    invoke-direct {v1}, Landroid/sun/security/provider/JavaKeyStoreProvider;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/App$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/deepalhome/launcher/App$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperCacheMaintenance;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperCacheMaintenance;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "v26.0521"

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "V"

    invoke-static {v1, v2}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    invoke-static {v1, v2}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.9.52"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "wallpaper_cache_maintenance"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cleaned_wallpaper_cache_0.9.52"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    iget-object v5, v4, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/util/LruCache;->trimToSize(J)V

    iget-object v5, v4, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    iget-object v4, v4, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->evictToSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v4

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v4

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "WallpaperCacheMaintenance"

    const-string v6, "Failed to clear Glide memory cache"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    const/4 v4, -0x2

    invoke-static {v4}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v1, v3}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    sget-object v1, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/util/DebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    iget-boolean v3, v1, Lcom/deepalhome/launcher/util/FileDebugLogger;->initialized:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    iput-boolean v4, v1, Lcom/deepalhome/launcher/util/FileDebugLogger;->initialized:Z

    iget-object v3, v1, Lcom/deepalhome/launcher/util/FileDebugLogger;->prefs$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    const-string v5, "persist_enabled"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v4, v4}, Lcom/deepalhome/launcher/util/FileDebugLogger;->setEnabled(ZZ)V

    :cond_6
    :goto_3
    sget-object v1, Lcom/deepalhome/launcher/util/BleDebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/BleDebugLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/util/BleDebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    iget-boolean v3, v1, Lcom/deepalhome/launcher/util/FileDebugLogger;->initialized:Z

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    iput-boolean v4, v1, Lcom/deepalhome/launcher/util/FileDebugLogger;->initialized:Z

    iget-object v3, v1, Lcom/deepalhome/launcher/util/FileDebugLogger;->prefs$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    const-string v5, "persist_enabled"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, v4, v4}, Lcom/deepalhome/launcher/util/FileDebugLogger;->setEnabled(ZZ)V

    :cond_8
    :goto_4
    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    sget-object v3, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->musicChangedListener:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicChangedListener$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/music/MusicManager;->addOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$lyricPayloadAvailableListener$1;

    const-string v3, "listener"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    sget-object v3, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->musicSettingsChangedListener:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher$musicSettingsChangedListener$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/music/MusicSettingsManager;->addOnMusicSettingsChangedListener(Lkotlin/jvm/functions/Function0;)V

    :goto_5
    sget-object v1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v5}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync$default(Lcom/deepalhome/launcher/util/AppUtil;ZLkotlin/jvm/functions/Function1;I)V

    sget-object v1, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->INSTANCE:Lcom/deepalhome/launcher/util/CoreServiceCoordinator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->ensureServices(Landroid/content/Context;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "package"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v6, p0, Lcom/deepalhome/launcher/App;->packageChangeReceiver:Lcom/deepalhome/launcher/App$packageChangeReceiver$1;

    const/16 v7, 0x21

    if-lt v5, v7, :cond_a

    invoke-virtual {p0, v6, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_6

    :cond_a
    invoke-virtual {p0, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_6
    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->init()V

    sget-object v1, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->INSTANCE:Lcom/deepalhome/launcher/util/NetworkStateMonitor;

    sget-object v5, Lcom/deepalhome/launcher/App$onCreate$1;->INSTANCE:Lcom/deepalhome/launcher/App$onCreate$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "onNetworkAvailable"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_8

    :cond_b
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroid/net/ConnectivityManager;

    if-eqz v7, :cond_c

    move-object v3, v6

    check-cast v3, Landroid/net/ConnectivityManager;

    :cond_c
    if-nez v3, :cond_d

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_8

    :cond_d
    invoke-static {v3}, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->currentNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v1

    sput-boolean v1, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->isValidatedAvailable:Z

    new-instance v1, Lcom/deepalhome/launcher/util/NetworkStateMonitor$init$networkCallback$1;

    invoke-direct {v1, v3, v5}, Lcom/deepalhome/launcher/util/NetworkStateMonitor$init$networkCallback$1;-><init>(Landroid/net/ConnectivityManager;Lcom/deepalhome/launcher/App$onCreate$1;)V

    :try_start_3
    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v1

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_7
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_e

    sget-object v3, Lcom/deepalhome/launcher/util/NetworkStateMonitor;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v3, "NetworkStateMonitor"

    const-string v5, "Failed to register network callback"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_8
    sget-object v1, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->settingsObserverInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->getEnabledServicesString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->lastObservedEnabledServices:Ljava/lang/String;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-direct {v5, v1, v3, v0}, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    sput-object v5, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->settingsObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "enabled_accessibility_services"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v5, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->settingsObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_9
    invoke-static {p0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->startDaemonServiceIfNeeded(Landroid/content/Context;)V

    sget-object v1, Lcom/deepalhome/launcher/util/LauncherBootManager;->INSTANCE:Lcom/deepalhome/launcher/util/LauncherBootManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getLauncherBootEnabled()Z

    move-result v3

    invoke-static {p0, v3}, Lcom/deepalhome/launcher/util/LauncherBootManager;->updateReceiverEnabled(Landroid/content/Context;Z)Z

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperCarouselEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->listDownloads()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v0, :cond_10

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_a

    :cond_10
    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperCarouselEnabled(Z)V

    :cond_11
    :goto_a
    sget-object p0, Lcom/deepalhome/launcher/util/KeycodeUtil;->INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keyFirstStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object p0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keyEndStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object p0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keyLongStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lcom/deepalhome/launcher/util/KeycodeUtil;->cleanUpListeners()V

    sget-object p0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keycodeLogcatListener:Lcom/deepalhome/launcher/util/KeycodeUtil$keycodeLogcatListener$1;

    sget-object v2, Lcom/deepalhome/launcher/util/KeycodeUtil;->LOGCAT_FILTER:Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/util/LogcatUtil;->addOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->isDynamicSplashEnabled()Z

    move-result p0

    if-nez p0, :cond_13

    sget-object p0, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_b

    :cond_12
    invoke-static {}, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->wakeHud()V

    :cond_13
    :goto_b
    return-void
.end method

.method public final onTerminate()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/App;->densityLifecycleCallbacks:Lcom/umeng/analytics/pro/l$1;

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :try_start_0
    iget-object v0, p0, Lcom/deepalhome/launcher/App;->packageChangeReceiver:Lcom/deepalhome/launcher/App$packageChangeReceiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    sget-object v1, Lcom/deepalhome/launcher/util/KeycodeUtil;->keycodeLogcatListener:Lcom/deepalhome/launcher/util/KeycodeUtil$keycodeLogcatListener$1;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/LogcatUtil;->removeOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keyFirstStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keyEndStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keyLongStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lcom/deepalhome/launcher/util/KeycodeUtil;->cleanUpListeners()V

    invoke-static {}, Lcom/deepalhome/launcher/util/KeycodeUtil;->cleanUpListeners()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/KeycodeUtil;->keycodeEventListeners:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
