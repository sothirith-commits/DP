.class public final Lcom/bumptech/glide/load/engine/DiskCacheStrategy$4;
.super Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public final decodeCachedData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final decodeCachedResource()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;I)Z
    .locals 0

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p0, :cond_0

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
