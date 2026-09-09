.class public final Lcom/bumptech/glide/util/GlideSuppliers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;


# instance fields
.field public volatile instance:Ljava/lang/Object;

.field public final val$supplier:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->val$supplier:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->val$supplier:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v0}, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method public getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->val$supplier:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;->cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    new-instance v2, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    iget-wide v3, v0, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;->diskCacheSize:J

    invoke-direct {v2, v1, v3, v4}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;-><init>(Ljava/io/File;J)V

    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_4

    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    :cond_4
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-object p0
.end method
