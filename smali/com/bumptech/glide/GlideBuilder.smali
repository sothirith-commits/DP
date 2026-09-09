.class public final Lcom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

.field public bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public connectivityMonitorFactory:Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;

.field public defaultRequestListeners:Ljava/util/List;

.field public final defaultRequestOptionsFactory:Lcom/bumptech/glide/GlideBuilder$1;

.field public final defaultTransitionOptions:Landroidx/collection/ArrayMap;

.field public diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;

.field public engine:Lcom/bumptech/glide/load/engine/Engine;

.field public final glideExperimentsBuilder:Lcom/bumptech/glide/GlideExperiments$Builder;

.field public final logLevel:I

.field public memoryCache:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

.field public memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

.field public requestManagerFactory:Lcom/bumptech/glide/manager/RequestManagerRetriever$1;

.field public sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->defaultTransitionOptions:Landroidx/collection/ArrayMap;

    new-instance v0, Lcom/bumptech/glide/GlideExperiments$Builder;

    invoke-direct {v0}, Lcom/bumptech/glide/GlideExperiments$Builder;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->glideExperimentsBuilder:Lcom/bumptech/glide/GlideExperiments$Builder;

    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/GlideBuilder;->logLevel:I

    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(BI)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestOptionsFactory:Lcom/bumptech/glide/GlideBuilder$1;

    return-void
.end method
