.class public final Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cachedModelLoaders:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->cachedModelLoaders:Ljava/util/HashMap;

    return-void
.end method
