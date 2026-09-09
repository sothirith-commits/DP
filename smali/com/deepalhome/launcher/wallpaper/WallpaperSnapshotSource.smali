.class public final enum Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

.field public static final enum GENERATED_DRAWABLE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

.field public static final enum GLIDE_RESOURCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

.field public static final enum VIDEO_FRAME:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

.field public static final enum VIDEO_POSTER_CACHE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

.field public static final enum VIEW_DRAWABLE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    const-string v1, "VIDEO_POSTER_CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->VIDEO_POSTER_CACHE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    const-string v2, "VIDEO_FRAME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->VIDEO_FRAME:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    const-string v3, "VIEW_DRAWABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->VIEW_DRAWABLE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    const-string v4, "GLIDE_RESOURCE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->GLIDE_RESOURCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    const-string v5, "GENERATED_DRAWABLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->GENERATED_DRAWABLE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->$VALUES:[Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->$VALUES:[Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    return-object v0
.end method
