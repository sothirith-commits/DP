.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$confirmDeleteSelected$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$confirmDeleteSelected$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$confirmDeleteSelected$1;->$selectedItems:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$confirmDeleteSelected$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$confirmDeleteSelected$1;->$selectedItems:Ljava/util/List;

    sget v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;

    invoke-direct {v1, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;-><init>(Ljava/util/List;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->requestStoragePermission(Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
