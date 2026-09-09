.class public final synthetic Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

.field public final synthetic f$2:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(ILcom/deepalhome/launcher/wallpaper/VideoWallpaperController;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda1;->f$1:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda1;->f$2:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda1;->f$1:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$player"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda1;->f$2:Landroid/media/MediaPlayer;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p1, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRequestId:I

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda1;->f$0:I

    if-eq p0, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isVideoPrepared:Z

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    if-lez p0, :cond_1

    if-lez p1, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyVideoSize(II)V

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoMetadata:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$VideoMetadata;

    if-eqz p0, :cond_2

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$VideoMetadata;->width:I

    if-lez p1, :cond_2

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$VideoMetadata;->height:I

    if-lez p0, :cond_2

    invoke-virtual {v0, p1, p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyVideoSize(II)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->updateVideoPlaybackState()V

    :goto_1
    return-void
.end method
