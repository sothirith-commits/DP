.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$2;
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

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$2;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$2;->$requestId:I

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$2;->$path:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$2;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-static {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$clearPendingVideoPosterBitmap(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$2;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$2;->$requestId:I

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$2;->$path:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$loadVideoWallpaper$startVideoLoad(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
