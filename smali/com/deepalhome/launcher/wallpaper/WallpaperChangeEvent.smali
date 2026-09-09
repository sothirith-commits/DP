.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final direction:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

.field public final wallpaper:Lcom/deepalhome/launcher/wallpaper/Wallpaper;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/Wallpaper;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;)V
    .locals 1

    const-string v0, "wallpaper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "direction"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->wallpaper:Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->direction:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;

    iget-object v1, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->wallpaper:Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->wallpaper:Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->direction:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->direction:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->wallpaper:Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->direction:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WallpaperChangeEvent(wallpaper="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->wallpaper:Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;->direction:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
