.class public final Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# instance fields
.field public final messageDigest:Ljava/security/MessageDigest;

.field public final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    invoke-direct {v0}, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    return-object p0
.end method
