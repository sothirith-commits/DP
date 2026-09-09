.class public final Lcom/bumptech/glide/load/Options;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field public final values:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v0}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/bumptech/glide/load/Options;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/Options;

    iget-object p0, p0, Lcom/bumptech/glide/load/Options;->values:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    iget-object p1, p1, Lcom/bumptech/glide/load/Options;->values:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/load/Options;->values:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/bumptech/glide/load/Option;->defaultValue:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/Options;->values:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {p0}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Options{values="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/bumptech/glide/load/Options;->values:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    iget v2, v1, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/Option;

    iget-object v2, p0, Lcom/bumptech/glide/load/Options;->values:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lcom/bumptech/glide/load/Option;->cacheKeyUpdater:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    iget-object v4, v1, Lcom/bumptech/glide/load/Option;->keyBytes:[B

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    sget-object v5, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/bumptech/glide/load/Option;->keyBytes:[B

    :cond_0
    iget-object v1, v1, Lcom/bumptech/glide/load/Option;->keyBytes:[B

    invoke-interface {v3, v1, v2, p1}, Lcom/bumptech/glide/load/Option$CacheKeyUpdater;->update([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
