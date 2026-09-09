.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$launchLocalImport$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$launchLocalImport$2;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$launchLocalImport$2;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    const-class v2, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "file_browser_mode"

    const-string v2, "video_only"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$launchLocalImport$2;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
