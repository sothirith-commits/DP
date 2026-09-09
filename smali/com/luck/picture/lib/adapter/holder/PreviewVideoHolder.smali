.class public final Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;
.super Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;
.source "SourceFile"


# instance fields
.field public final ivPlayButton:Landroid/widget/ImageView;

.field public final mPlayerListener:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;

.field public final progress:Landroid/widget/ProgressBar;

.field public final videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;-><init>(Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;)V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->mPlayerListener:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;

    const v0, 0x7f0b031e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f0b0460

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->progress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    if-nez v1, :cond_1

    new-instance v1, Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    invoke-direct {v1}, Lcom/luck/picture/lib/engine/MediaPlayerEngine;-><init>()V

    iput-object v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/luck/picture/lib/widget/MediaPlayerView;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Lcom/luck/picture/lib/widget/MediaPlayerView;->surfaceView:Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v6, v0, Lcom/luck/picture/lib/widget/MediaPlayerView;->surfaceView:Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/luck/picture/lib/widget/MediaPlayerView;->surfaceView:Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/luck/picture/lib/widget/MediaPlayerView;->surfaceView:Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-eq p0, v4, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->setScaleDisplaySize(Lcom/luck/picture/lib/entity/LocalMedia;)V

    new-instance p1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$3;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$3;-><init>(Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;I)V

    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$3;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$3;-><init>(Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final isPlaying$1()Z
    .locals 1

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/MediaPlayerView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadImage()V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onClickBackPressed()V
    .locals 1

    new-instance v0, Lcom/umeng/analytics/pro/ah;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/ah;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V

    return-void
.end method

.method public final onLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 2

    new-instance v0, Lcom/luck/picture/lib/adapter/holder/PreviewImageHolder$2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/luck/picture/lib/adapter/holder/PreviewImageHolder$2;-><init>(Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;Lcom/luck/picture/lib/entity/LocalMedia;I)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/MediaPlayerView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/MediaPlayerView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public final onViewAttachedToWindow$1()V
    .locals 6

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    iget-object v3, v2, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, v2, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v3, v2, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/luck/picture/lib/widget/MediaPlayerView$1;

    invoke-direct {v4, v2}, Lcom/luck/picture/lib/widget/MediaPlayerView$1;-><init>(Lcom/luck/picture/lib/widget/MediaPlayerView;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v3, v2, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/luck/picture/lib/engine/MediaPlayerEngine$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance v4, Lcom/luck/picture/lib/engine/MediaPlayerEngine$2;

    invoke-direct {v4, v1, v2}, Lcom/luck/picture/lib/engine/MediaPlayerEngine$2;-><init>(Lcom/luck/picture/lib/engine/MediaPlayerEngine;Lcom/luck/picture/lib/widget/MediaPlayerView;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v2, Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1}, Lcom/luck/picture/lib/engine/MediaPlayerEngine$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    iget-object v0, v0, Lcom/luck/picture/lib/engine/MediaPlayerEngine;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->mPlayerListener:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onViewDetachedFromWindow$1()V
    .locals 4

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    iget-object v2, v1, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    iget-object v2, v1, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v2, v1, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v2, v1, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iput-object v3, v1, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    iget-object v0, v0, Lcom/luck/picture/lib/engine/MediaPlayerEngine;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->mPlayerListener:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->playerDefaultUI()V

    return-void
.end method

.method public final playerDefaultUI()V
    .locals 3

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->onPreviewVideoTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 3

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/luck/picture/lib/engine/MediaPlayerEngine;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->mPlayerListener:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$5;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :goto_0
    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iput-object v1, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public final resumePausePlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->isPlaying$1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->onPause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->onResume()V

    :goto_0
    return-void
.end method

.method public final setScaleDisplaySize(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->setScaleDisplaySize(Lcom/luck/picture/lib/entity/LocalMedia;)V

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenHeight:I

    iget v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenWidth:I

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iget p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenAppInHeight:I

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    instance-of v1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 p0, 0xd

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_3

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p0, 0x0

    iput p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final startPlay()V
    .locals 5

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->videoPlayer:Lcom/luck/picture/lib/widget/MediaPlayerView;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    iget-object v4, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->media:Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v4, v4, Lcom/luck/picture/lib/entity/LocalMedia;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->onPreviewVideoTitle(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->media:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/MediaPlayerView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/MediaPlayerView;->getSurfaceView()Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;

    move-result-object v2

    invoke-static {p0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :try_start_0
    invoke-static {p0}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    iget-object p0, v1, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoPlayer cannot be empty,Please implement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/luck/picture/lib/engine/VideoPlayerEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
