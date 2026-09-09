.class public final Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataRewinder$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    new-instance p0, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder;-><init>(Ljava/nio/ByteBuffer;I)V

    return-object p0
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Ljava/nio/ByteBuffer;

    return-object p0
.end method
