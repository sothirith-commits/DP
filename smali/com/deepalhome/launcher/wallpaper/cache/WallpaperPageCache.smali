.class public final Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fetchedAt:J

.field public final hasMore:Z

.field public final items:Ljava/util/List;

.field public final key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

.field public final total:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;Ljava/lang/Integer;ZJLjava/util/List;)V
    .locals 1

    const-string v0, "key"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items"

    invoke-static {v0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->total:Ljava/lang/Integer;

    iput-boolean p3, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->hasMore:Z

    iput-wide p4, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->fetchedAt:J

    iput-object p6, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    iget-object v1, p1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->total:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->total:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->hasMore:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->hasMore:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->fetchedAt:J

    iget-wide v5, p1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->fetchedAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->items:Ljava/util/List;

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->items:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->total:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->hasMore:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->fetchedAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->items:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WallpaperPageCache(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->key:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->total:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->hasMore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fetchedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->fetchedAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;->items:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
