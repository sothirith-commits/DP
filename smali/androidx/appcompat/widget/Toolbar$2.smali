.class public final Landroidx/appcompat/widget/Toolbar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v1, Landroidx/appcompat/widget/Toolbar$2;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/liulishuo/okdownload/core/download/DownloadChain;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnection()V

    return-void

    :pswitch_0
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v1, v0, Lcom/liulishuo/okdownload/DownloadTask;->listener:Lcom/liulishuo/okdownload/DownloadListener;

    invoke-interface {v1, v0}, Lcom/liulishuo/okdownload/DownloadListener;->taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V

    return-void

    :pswitch_1
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v2, v1, Lcom/liulishuo/okdownload/DownloadTask;->listener:Lcom/liulishuo/okdownload/DownloadListener;

    const/4 v4, 0x3

    invoke-interface {v2, v1, v4, v3}, Lcom/liulishuo/okdownload/DownloadListener;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_2
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    return-void

    :pswitch_3
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void

    :pswitch_4
    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    iput-boolean v4, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v0, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->targetState:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->continueSettlingToState(I)V

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v3, v0, :cond_2

    iget v0, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->targetState:I

    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :cond_2
    :goto_1
    return-void

    :pswitch_5
    sget v0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->$r8$clinit:I

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->canProcessWeatherUpdates()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1, v2, v2}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->requestWeather(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZZ)Z

    :cond_4
    :goto_2
    return-void

    :pswitch_6
    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService$Companion;

    iget-object v3, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->listDownloads()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v3, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->runnable:Landroidx/appcompat/widget/Toolbar$2;

    iget-object v8, v3, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->handler:Landroid/os/Handler;

    if-ge v6, v0, :cond_5

    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperCarouselEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Wallpaper carousel requires at least 2 wallpapers, currently only "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sheets, auto-disabled carousel feature"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_4

    :cond_5
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v9}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_8

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    invoke-virtual {v0, v2}, Lkotlin/random/AbstractPlatformRandom;->nextInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    :try_start_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "getAbsolutePath(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-static {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->resetToDefault$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_4
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getWallpaperCarouselIntervalMinutes()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v9, 0xea60

    mul-long/2addr v4, v9

    iget-wide v9, v3, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->currentInterval:J

    cmp-long v0, v4, v9

    if-eqz v0, :cond_9

    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-wide v4, v3, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->currentInterval:J

    invoke-virtual {v8, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    iget-wide v2, v3, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->currentInterval:J

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_7
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-static {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$100(Lcom/deepalhome/launcher/view/DragLinearLayout;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drag end fallback triggered; swap animations did not finish in time."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$300(Lcom/deepalhome/launcher/view/DragLinearLayout;)V

    :cond_b
    :goto_5
    return-void

    :pswitch_8
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;

    iget-boolean v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isRefreshing:Z

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->updateTime()V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-wide v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->REFRESH_INTERVAL_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    return-void

    :pswitch_9
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/time/CompassClockView;

    iget-boolean v2, v0, Lcom/deepalhome/launcher/time/CompassClockView;->isRefreshing:Z

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcom/deepalhome/launcher/time/CompassClockView;->updateTime()V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-wide v2, v0, Lcom/deepalhome/launcher/time/CompassClockView;->REFRESH_INTERVAL_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return-void

    :pswitch_a
    sget-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isReadyForAutoNavi()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_6

    :cond_e
    sget-object v2, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "heartbeat_at"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6
    return-void

    :pswitch_b
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;

    iget-object v1, v0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

    check-cast v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    invoke-virtual {v1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->onDrawFrameBegin()V

    iget-boolean v1, v0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mIsPaused:Z

    if-nez v1, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    iget-object v1, v0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-static {v1, v3}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_10
    iget-object v0, v0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

    check-cast v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    invoke-virtual {v0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->onDrawFrameEnd()V

    return-void

    :pswitch_c
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;

    iget-object v0, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object v0, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->releaseSharedEGLImage()V

    :cond_11
    return-void

    :pswitch_d
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object v3, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v5, "CocosRemoteRenderClient"

    if-eqz v0, :cond_12

    const-string v0, "Service was bound!"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_12
    iget-object v0, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientId:I

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "doBindService, mContext is null, clientId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_8

    :cond_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServicePackageName:Ljava/lang/String;

    iget-object v9, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceFullClassName:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_2
    iget-object v7, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mConnection:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;

    invoke-virtual {v7, v0, v8, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v0

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v4

    :goto_7
    if-nez v2, :cond_14

    const-string v0, "bindService returns: false, mClientId="

    invoke-static {v6, v0, v5}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_8
    iget-object v0, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez v2, :cond_15

    invoke-virtual {v1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->doUnbindService()V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->bindServiceWidthDelay()V

    :cond_15
    return-void

    :pswitch_e
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_9
    :try_start_3
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_9

    :pswitch_f
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_10
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/RequestManager;

    iget-object v1, v0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    return-void

    :pswitch_11
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->cancel()V

    return-void

    :pswitch_12
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->cancel()V

    return-void

    :pswitch_13
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/blankj/utilcode/util/ThreadUtils$Task;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onCancel()V

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onDone()V

    return-void

    :pswitch_14
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    return-void

    :pswitch_15
    monitor-enter p0

    :try_start_4
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iput-boolean v4, v0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_a
    sget-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_16

    goto :goto_a

    :cond_16
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    sget-object v2, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroidx/databinding/ViewDataBinding$6;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_b

    :cond_17
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :goto_b
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :pswitch_16
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, v4}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    return-void

    :pswitch_17
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/ListViewAutoScrollHelper;

    iget-boolean v2, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    if-nez v2, :cond_18

    goto/16 :goto_d

    :cond_18
    iget-boolean v2, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    iget-object v3, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    if-eqz v2, :cond_19

    iput-boolean v4, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v7, -0x1

    iput-wide v7, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iput-wide v5, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    :cond_19
    iget-wide v5, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_1a

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v9, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v2, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v11, v2

    add-long/2addr v9, v11

    cmp-long v2, v5, v9

    if-lez v2, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-virtual {v0}, Landroidx/core/widget/ListViewAutoScrollHelper;->shouldAnimate()Z

    move-result v2

    if-nez v2, :cond_1b

    :goto_c
    iput-boolean v4, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    goto :goto_d

    :cond_1b
    iget-boolean v2, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    iget-object v5, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$1:Landroid/view/View;

    if-eqz v2, :cond_1c

    iput-boolean v4, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_1c
    iget-wide v9, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    cmp-long v2, v9, v7

    if-eqz v2, :cond_1d

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    const/high16 v4, -0x3f800000    # -4.0f

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v2, v8

    add-float/2addr v2, v4

    iget-wide v8, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v8, v6, v8

    iput-wide v6, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    long-to-float v4, v8

    mul-float/2addr v4, v2

    iget v2, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v0, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    invoke-static {v0, v2}, Landroidx/core/widget/ListViewCompat$Api19Impl;->scrollListBy(Landroid/widget/ListView;I)V

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v5, v1}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_d
    return-void

    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    return-void

    :pswitch_19
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/DropDownListView;

    iput-object v3, v0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    return-void

    :pswitch_1a
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v1, v0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v0}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    instance-of v2, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_1e

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    goto :goto_e

    :cond_1e
    move-object v2, v3

    :goto_e
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :cond_1f
    :try_start_6
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-interface {v1, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v1, v4, v3, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_f

    :catchall_1
    move-exception v0

    goto :goto_10

    :cond_20
    :goto_f
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_21
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_22
    return-void

    :goto_10
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_23
    throw v0

    :pswitch_1b
    :try_start_7
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->access$001(Landroidx/activity/ComponentActivity;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    goto :goto_11

    :catch_5
    move-exception v0

    goto :goto_12

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_13

    :cond_24
    throw v0

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    :goto_13
    return-void

    :cond_25
    throw v0

    :pswitch_1c
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
