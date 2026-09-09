.class public abstract Lcom/bumptech/glide/load/model/FileLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# instance fields
.field public final opener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/FileLoader$Factory;->opener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1

    new-instance p1, Lcom/bumptech/glide/load/model/FileLoader;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/FileLoader$Factory;->opener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/FileLoader;-><init>(ILjava/lang/Object;)V

    return-object p1
.end method
