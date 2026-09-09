.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$videoController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$videoController$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$videoController$2;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$videoController$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$videoController$2;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    return-object v0
.end method
