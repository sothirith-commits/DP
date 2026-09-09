.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field final synthetic $requestId:I

.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;->$requestId:I

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;->$path:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$setAllowVideoReveal$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;->$requestId:I

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;->$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$loadVideoWallpaper$startVideoLoad(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$getVideoController(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object p0

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->hasVideoFrame:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->showVideoSurface()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
