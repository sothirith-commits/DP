.class public final enum Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

.field public static final enum DAILY:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

.field public static final enum DYNAMIC:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

.field public static final enum QH360:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

.field public static final enum STATIC:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;


# direct methods
.method private static final synthetic $values()[Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->QH360:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->STATIC:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->DAILY:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->DYNAMIC:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    filled-new-array {v0, v1, v2, v3}, [Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    const-string v1, "QH360"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->QH360:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    const-string v1, "STATIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->STATIC:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    const-string v1, "DAILY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->DAILY:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->DYNAMIC:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->$values()[Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->$VALUES:[Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;->$VALUES:[Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    return-object v0
.end method
