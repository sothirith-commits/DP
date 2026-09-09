.class public Lcom/luck/picture/lib/widget/MediaPlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;
    }
.end annotation


# instance fields
.field public mediaPlayer:Landroid/media/MediaPlayer;

.field public surfaceView:Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;


# virtual methods
.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public getSurfaceView()Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->surfaceView:Lcom/luck/picture/lib/widget/MediaPlayerView$VideoSurfaceView;

    return-object p0
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object p0, p0, Lcom/luck/picture/lib/widget/MediaPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
