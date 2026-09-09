.class public final Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fromClass:Ljava/lang/Class;

.field public final toClass:Ljava/lang/Class;

.field public final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->fromClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->toClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry$Entry;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    return-void
.end method
