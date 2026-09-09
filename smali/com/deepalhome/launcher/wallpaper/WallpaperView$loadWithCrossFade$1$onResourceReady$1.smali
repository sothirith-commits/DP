.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1$onResourceReady$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1$onResourceReady$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1$onResourceReady$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$notifyWallpaperFrameReadyInternal(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
