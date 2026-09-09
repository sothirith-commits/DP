.class public final Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0

    new-instance p0, Lcom/bumptech/glide/load/model/ByteBufferFileLoader;

    invoke-direct {p0}, Lcom/bumptech/glide/load/model/ByteBufferFileLoader;-><init>()V

    return-object p0
.end method
