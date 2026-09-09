.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;
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

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v0, 0x1

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v1, Lokhttp3/ResponseBody;

    const-string v2, "this$0"

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v3, Lcom/koushikdutta/async/Util$8;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    const-string v3, "$context"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v3, Lcom/deepalhome/launcher/http/S05AppUpdateInfo;

    const-string v4, "$info"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    const-string v4, "$callback"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget v4, Lkotlin/Result;->$r8$clinit:I

    sget-object v4, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    new-instance v5, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$file$1;

    invoke-direct {v5, p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$file$1;-><init>(Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;)V

    invoke-static {v4, v2, v3, v1, v5}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->access$writeApk(Lcom/deepalhome/launcher/settings/S05AppUpdateManager;Landroid/content/Context;Lcom/deepalhome/launcher/http/S05AppUpdateInfo;Lokhttp3/ResponseBody;Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$file$1;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;I)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/http/S05AppUpdateInfo;->getChecksum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->access$verifySha256(Lcom/deepalhome/launcher/settings/S05AppUpdateManager;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;I)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {v4, v3, v1}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->access$prepareInstallerApk(Lcom/deepalhome/launcher/settings/S05AppUpdateManager;Lcom/deepalhome/launcher/http/S05AppUpdateInfo;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v0, p0}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    const-string v5, "this$0"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "$key"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "$policy"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "$hadCache"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "$callback"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->cache:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperListCache;

    check-cast v5, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "Failed to read cache file: "

    iget-object v7, v5, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->lock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    new-instance v8, Ljava/io/File;

    iget-object v9, v5, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->baseDir:Ljava/io/File;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->toFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_2

    goto :goto_4

    :cond_2
    :try_start_2
    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v8, v9}, Lkotlin/io/FilesKt__FileReadWriteKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCacheJsonCodec;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCacheJsonCodec;

    iget-object v5, v5, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v9}, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCacheJsonCodec;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception v5

    :try_start_3
    const-string v9, "FileWallpaperListCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    monitor-exit v7

    goto :goto_5

    :cond_3
    :goto_4
    monitor-exit v7

    :goto_5
    if-eqz v10, :cond_6

    iget-wide v5, v10, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->fetchedAt:J

    invoke-virtual {v3, v5, v6}, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->isExpired(J)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->getAllowStale()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    iput-boolean v0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v10, v5}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->getRevalidateWhenStale()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    new-instance v0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v2, p0, v4}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_6
    return-void

    :goto_7
    monitor-exit v7

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
