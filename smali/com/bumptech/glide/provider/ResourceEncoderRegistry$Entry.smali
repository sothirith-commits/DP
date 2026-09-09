.class public final Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final encoder:Lcom/bumptech/glide/load/ResourceEncoder;

.field public final resourceClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$Entry;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    return-void
.end method
