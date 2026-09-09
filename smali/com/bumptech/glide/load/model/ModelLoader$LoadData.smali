.class public final Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final alternateKeys:Ljava/util/List;

.field public final fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

.field public final sourceKey:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Argument must not be null"

    invoke-static {v1, p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-static {v1, p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    return-void
.end method
