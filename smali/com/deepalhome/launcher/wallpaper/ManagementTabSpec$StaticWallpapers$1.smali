.class final Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers$1;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->getDownloadDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers$1;->invoke()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
