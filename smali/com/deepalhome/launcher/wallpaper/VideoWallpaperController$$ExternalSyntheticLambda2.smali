.class public final synthetic Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;


# direct methods
.method public synthetic constructor <init>(ILcom/deepalhome/launcher/wallpaper/VideoWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p1, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoRequestId:I

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$$ExternalSyntheticLambda2;->f$0:I

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyVideoSize(II)V

    :goto_0
    return-void
.end method
