.class public final Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;
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
    .locals 2

    new-instance p0, Lcom/bumptech/glide/load/model/FileLoader;

    new-instance p1, Lcom/bumptech/glide/GlideBuilder$1;

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(BI)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/load/model/FileLoader;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method
