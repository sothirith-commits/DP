.class public final synthetic Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

.field public final synthetic f$2:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(ILcom/deepalhome/launcher/wallpaper/VideoWallpaperController;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda3;->f$1:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda3;->f$2:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda3;->f$1:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    const-string v0, "this$0"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda3;->f$2:Landroid/media/MediaPlayer;

    const-string v1, "$player"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRequestId:I

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda3;->f$0:I

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    const/4 v1, 0x1

    if-eq p2, p0, :cond_2

    const/16 p0, 0x2711

    if-eq p2, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->normalizeRotation(I)I

    move-result p0

    iput-boolean v1, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasRotationInfo:Z

    iget p2, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRotation:I

    if-eq p0, p2, :cond_5

    iput p0, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRotation:I

    iget p0, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoWidth:I

    if-lez p0, :cond_5

    iget p2, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoHeight:I

    if-lez p2, :cond_5

    invoke-virtual {p1, p0, p2}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyVideoLayout(II)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasRenderingStartedForCurrentVideo:Z

    iget p0, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoWidth:I

    if-lez p0, :cond_3

    iget p0, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoHeight:I

    if-gtz p0, :cond_5

    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p2

    if-lez p0, :cond_4

    if-lez p2, :cond_4

    invoke-virtual {p1, p0, p2}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyVideoSize(II)V

    goto :goto_0

    :cond_4
    iget-object p0, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoMetadata:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$VideoMetadata;

    if-eqz p0, :cond_5

    iget p2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$VideoMetadata;->width:I

    if-lez p2, :cond_5

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$VideoMetadata;->height:I

    if-lez p0, :cond_5

    invoke-virtual {p1, p2, p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyVideoSize(II)V

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
