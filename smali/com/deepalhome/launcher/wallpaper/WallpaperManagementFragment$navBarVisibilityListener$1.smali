.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$navBarVisibilityListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$navBarVisibilityListener$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$navBarVisibilityListener$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    sget p1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->updateNavBarInsets$1()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
