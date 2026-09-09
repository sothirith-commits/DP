.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$adapter$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setWallpaper$1;

    invoke-direct {v0, p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setWallpaper$1;-><init>(Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->requestStoragePermission(Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
