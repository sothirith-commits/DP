.class public interface abstract Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancelScheduled(Ljava/lang/Runnable;)V
.end method

.method public abstract getFadeDuration()J
.end method

.method public abstract getPlaybackCheckDelay()J
.end method

.method public abstract getVideoContainer()Landroid/view/ViewGroup;
.end method

.method public abstract getVideoPosterView()Landroid/widget/ImageView;
.end method

.method public abstract getVideoTextureView()Landroid/view/TextureView;
.end method

.method public abstract isPlaybackEnabled()Z
.end method

.method public abstract isVideoRevealAllowed()Z
.end method

.method public abstract isViewAttached()Z
.end method

.method public abstract isWindowVisible()Z
.end method

.method public abstract notifyWallpaperFrameReady()V
.end method

.method public abstract scheduleDelayed(Ljava/lang/Runnable;J)V
.end method

.method public abstract updateNightMask()V
.end method
