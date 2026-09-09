.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3;
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

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3;->$path:Ljava/lang/String;

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3;->$requestId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3;->$path:Ljava/lang/String;

    iget v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3;->$requestId:I

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;

    invoke-direct {v5, v0, v2, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x8

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->startScrollTransition$default(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
