.class public final Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dataClass:Ljava/lang/Class;

.field public final factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

.field public final modelClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->modelClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->dataClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    return-void
.end method
