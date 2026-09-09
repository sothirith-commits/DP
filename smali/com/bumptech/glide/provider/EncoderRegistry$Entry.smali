.class public final Lcom/bumptech/glide/provider/EncoderRegistry$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dataClass:Ljava/lang/Class;

.field public final encoder:Lcom/bumptech/glide/load/Encoder;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->dataClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->encoder:Lcom/bumptech/glide/load/Encoder;

    return-void
.end method
