.class public final Lcom/bumptech/glide/load/engine/LockedResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# static fields
.field public static final POOL:Lcom/koushikdutta/async/Util$8;


# instance fields
.field public isLocked:Z

.field public isRecycled:Z

.field public final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

.field public toWrap:Lcom/bumptech/glide/load/engine/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/engine/LockedResource$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/LockedResource$1;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Lcom/koushikdutta/async/Util$8;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/engine/LockedResource;->POOL:Lcom/koushikdutta/async/Util$8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    invoke-direct {v0}, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result p0

    return p0
.end method

.method public final getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    return-object p0
.end method

.method public final declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->throwIfRecycled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isRecycled:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    sget-object v0, Lcom/bumptech/glide/load/engine/LockedResource;->POOL:Lcom/koushikdutta/async/Util$8;

    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/Util$8;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isRecycled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/LockedResource;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method
