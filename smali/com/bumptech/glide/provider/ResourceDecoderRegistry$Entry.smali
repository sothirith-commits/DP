.class public final Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dataClass:Ljava/lang/Class;

.field public final decoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field public final resourceClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->dataClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    return-void
.end method
