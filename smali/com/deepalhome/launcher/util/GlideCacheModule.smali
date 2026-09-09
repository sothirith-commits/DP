.class public final Lcom/deepalhome/launcher/util/GlideCacheModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/module/GlideModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 3

    const-string p0, "context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "builder"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;

    new-instance v0, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;-><init>(Landroid/content/Context;I)V

    const/high16 p1, 0xc800000

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;J)V

    iput-object p0, p2, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;

    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "glide"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "registry"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance p1, Lcom/deepalhome/launcher/util/GlideCacheModule$registerComponents$$inlined$-addInterceptor$1;

    invoke-direct {p1}, Lcom/deepalhome/launcher/util/GlideCacheModule$registerComponents$$inlined$-addInterceptor$1;-><init>()V

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)V

    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    new-instance p0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-virtual {p3, p0}, Lcom/bumptech/glide/Registry;->replace(Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;)V

    return-void
.end method
