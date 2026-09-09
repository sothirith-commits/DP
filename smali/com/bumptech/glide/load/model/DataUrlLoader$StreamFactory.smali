.class public final Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# instance fields
.field public final opener:Lcom/bumptech/glide/GlideBuilder$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(BI)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;->opener:Lcom/bumptech/glide/GlideBuilder$1;

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1

    new-instance p1, Lcom/bumptech/glide/load/model/FileLoader;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;->opener:Lcom/bumptech/glide/GlideBuilder$1;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/FileLoader;-><init>(ILjava/lang/Object;)V

    return-object p1
.end method
