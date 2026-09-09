.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$onWallpaperChangedListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$onWallpaperChangedListener$2$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->direction:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$onWallpaperChangedListener$2$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$setCurrentTransitionDirection$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$loadWallpaper(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
