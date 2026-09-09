.class public final Lcom/bumptech/glide/load/model/ByteBufferFileLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    check-cast p1, Ljava/io/File;

    new-instance p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p2, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;

    const/4 p4, 0x1

    invoke-direct {p3, p4, p1}, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p0
.end method

.method public final bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method
