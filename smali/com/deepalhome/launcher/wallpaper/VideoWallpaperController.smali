.class public final Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final audioStateChangedListener:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$audioStateChangedListener$1;

.field public final callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

.field public final context:Landroid/content/Context;

.field public currentVideoPath:Ljava/lang/String;

.field public hasDeliveredFirstFrame:Z

.field public hasRenderingStartedForCurrentVideo:Z

.field public hasRotationInfo:Z

.field public hasVideoFrame:Z

.field public isAudioListenerRegistered:Z

.field public isVideoPrepared:Z

.field public lastFrameUpdateAt:J

.field public lastPlaybackRequestAt:J

.field public pendingVideoPath:Ljava/lang/String;

.field public playbackCheckRunnable:Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

.field public playbackCheckToken:I

.field public videoHeight:I

.field public videoMetadata:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$VideoMetadata;

.field public videoPlayer:Landroid/media/MediaPlayer;

.field public videoRequestId:I

.field public videoRotation:I

.field public videoSurface:Landroid/view/Surface;

.field public videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "callback"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$audioStateChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$audioStateChangedListener$1;-><init>(Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->audioStateChangedListener:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$audioStateChangedListener$1;

    return-void
.end method

.method public static applyPlayerVolume(Landroid/media/MediaPlayer;)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->ensureMusicStateListenerRegistered()V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperVideoAudioEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->mutedByMusicPlayback:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_1
    :goto_1
    return-void
.end method

.method public static normalizeRotation(I)I
    .locals 1

    rem-int/lit16 p0, p0, 0x168

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method public final applyVideoLayout(II)V
    .locals 7

    if-lez p1, :cond_c

    if-gtz p2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-lez v4, :cond_b

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRotation:I

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->normalizeRotation(I)I

    move-result p0

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq p0, v5, :cond_2

    if-eq p0, v4, :cond_2

    move v6, v1

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_3

    move v1, v2

    :cond_3
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpg-float p2, p1, v3

    if-gtz p2, :cond_4

    return-void

    :cond_4
    div-float p2, v6, v1

    cmpl-float p2, p1, p2

    if-lez p2, :cond_5

    mul-float v6, v1, p1

    goto :goto_1

    :cond_5
    div-float v1, v6, p1

    :goto_1
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    const/4 v2, 0x1

    if-ge p2, v2, :cond_6

    move p2, v2

    :cond_6
    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    if-ge v1, v2, :cond_7

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p2, :cond_8

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v2, :cond_9

    :cond_8
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    int-to-float p0, p0

    cmpg-float p1, p1, p0

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    :goto_3
    return-void

    :cond_b
    :goto_4
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda6;-><init>(Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :goto_5
    return-void
.end method

.method public final applyVideoSize(II)V
    .locals 2

    if-lez p1, :cond_4

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoWidth:I

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoHeight:I

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasRotationInfo:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRotation:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoMetadata:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$VideoMetadata;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$VideoMetadata;->rotation:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iput v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRotation:I

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyVideoLayout(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final cancelPlaybackCheck()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->playbackCheckRunnable:Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {v1, v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->cancelScheduled(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->playbackCheckRunnable:Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    return-void
.end method

.method public final handleVideoError()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->cancelPlaybackCheck()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->releaseVideoPlayer()V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoPosterView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-interface {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoPosterView()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->updateNightMask()V

    invoke-interface {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->notifyWallpaperFrameReady()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    const-string v0, "surface"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoSurface:Landroid/view/Surface;

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoWidth:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoHeight:I

    if-lez v1, :cond_1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_1
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->pendingVideoPath:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->pendingVideoPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->prepareVideo(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_3
    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoWidth:I

    if-lez p1, :cond_4

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoHeight:I

    if-lez v0, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyVideoLayout(II)V

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->updateVideoPlaybackState()V

    :goto_0
    return-void
.end method

.method public final pauseVideoPlayback()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isVideoPrepared:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->cancelPlaybackCheck()V

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_2
    return-void
.end method

.method public final prepareVideo(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isViewAttached()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->pendingVideoPath:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoSurface:Landroid/view/Surface;

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoSurface:Landroid/view/Surface;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_1
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoSurface:Landroid/view/Surface;

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoSurface:Landroid/view/Surface;

    if-nez v1, :cond_3

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->pendingVideoPath:Ljava/lang/String;

    return-void

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->pendingVideoPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->releaseVideoPlayer()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->cancelPlaybackCheck()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->lastFrameUpdateAt:J

    iput-wide v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->lastPlaybackRequestAt:J

    iget v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRequestId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRequestId:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isVideoPrepared:Z

    iput-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasVideoFrame:Z

    iput-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasDeliveredFirstFrame:Z

    iput-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasRenderingStartedForCurrentVideo:Z

    iput v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoWidth:I

    iput v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoHeight:I

    iput v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRotation:I

    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoMetadata:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$VideoMetadata;

    iput-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasRotationInfo:Z

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setRotation(F)V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, p0, v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda1;-><init>(ILcom/deepalhome/launcher/wallpaper/VideoWallpaperController;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2, p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda2;-><init>(ILcom/deepalhome/launcher/wallpaper/VideoWallpaperController;)V

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2, p0, v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda3;-><init>(ILcom/deepalhome/launcher/wallpaper/VideoWallpaperController;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda4;

    invoke-direct {v5, v2, p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda4;-><init>(ILcom/deepalhome/launcher/wallpaper/VideoWallpaperController;)V

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-static {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyPlayerVolume(Landroid/media/MediaPlayer;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoSurface:Landroid/view/Surface;

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_4
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "content://"

    invoke-static {p1, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "file://"

    invoke-static {p1, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_2

    :cond_8
    :goto_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :goto_2
    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->handleVideoError()V

    return-void

    :cond_9
    new-instance p1, Ljava/lang/Thread;

    new-instance v3, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1, v2}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;Landroid/net/Uri;I)V

    invoke-direct {p1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->handleVideoError()V

    :cond_a
    return-void
.end method

.method public final releaseVideoPlayer()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_0
    :goto_2
    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isVideoPrepared:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasVideoFrame:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasDeliveredFirstFrame:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasRenderingStartedForCurrentVideo:Z

    return-void
.end method

.method public final showVideoSurface()V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isViewAttached()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isPlaybackEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isWindowVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isVideoRevealAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->updateNightMask()V

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getFadeDuration()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoPosterView()Landroid/widget/ImageView;

    move-result-object v3

    iget-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasDeliveredFirstFrame:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasDeliveredFirstFrame:Z

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0, v3}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final stopPlayback()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->pendingVideoPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->cancelPlaybackCheck()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->releaseVideoPlayer()V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {v1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-interface {v1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {v1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasVideoFrame:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasDeliveredFirstFrame:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasRenderingStartedForCurrentVideo:Z

    iput v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoWidth:I

    iput v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoHeight:I

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    return-void
.end method

.method public final updateVideoPlaybackState()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isPlaybackEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isWindowVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isViewAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_6

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasVideoFrame:Z

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->updateNightMask()V

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasVideoFrame:Z

    if-nez v2, :cond_7

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->updateNightMask()V

    :goto_1
    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_8

    iget-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isVideoPrepared:Z

    if-nez v4, :cond_c

    :cond_8
    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isVideoPrepared:Z

    if-nez v2, :cond_c

    :cond_a
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v4}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->prepareVideo(Ljava/lang/String;)V

    :cond_c
    :goto_2
    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_e

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->cancelPlaybackCheck()V

    :cond_d
    return-void

    :cond_e
    iget-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isVideoPrepared:Z

    if-nez v4, :cond_10

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->cancelPlaybackCheck()V

    :cond_f
    return-void

    :cond_10
    if-eqz v1, :cond_13

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_11
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_5
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isViewAttached()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-nez v1, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->cancelPlaybackCheck()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->lastPlaybackRequestAt:J

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->playbackCheckToken:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->playbackCheckToken:I

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getPlaybackCheckDelay()J

    move-result-wide v2

    new-instance v4, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, p0}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;-><init>(ILcom/deepalhome/launcher/wallpaper/VideoWallpaperController;)V

    iput-object v4, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->playbackCheckRunnable:Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    invoke-interface {v0, v4, v2, v3}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->scheduleDelayed(Ljava/lang/Runnable;J)V

    goto :goto_6

    :cond_13
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->cancelPlaybackCheck()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->pauseVideoPlayback()V

    :cond_14
    :goto_6
    return-void
.end method
