.class public final Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;

.field public final diskCacheSize:J


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;->diskCacheSize:J

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;->cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;

    return-void
.end method
