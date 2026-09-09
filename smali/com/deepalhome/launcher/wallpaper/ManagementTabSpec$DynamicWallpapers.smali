.class public final Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;
.super Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicWallpapers"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->DYNAMIC_WALLPAPER:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->access$getVIDEO_EXTENSIONS$cp()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers$1;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers$1;

    const/4 v6, 0x0

    const v2, 0x7f1302eb

    const v3, 0x7f1301b1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;-><init>(Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;IILjava/util/Set;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public createFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;-><init>()V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->getTabType()Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "ARG_TAB_TYPE"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/logging/Utf8Kt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
