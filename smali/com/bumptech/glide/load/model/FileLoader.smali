.class public final Lcom/bumptech/glide/load/model/FileLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# instance fields
.field public final synthetic $r8$classId:I

.field public final fileOpener:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/load/model/FileLoader;->$r8$classId:I

    iput-object p2, p0, Lcom/bumptech/glide/load/model/FileLoader;->fileOpener:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1

    iget p2, p0, Lcom/bumptech/glide/load/model/FileLoader;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/bumptech/glide/load/model/FileLoader;->fileOpener:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/GlideBuilder$1;

    const/4 v0, 0x1

    invoke-direct {p4, v0, p1, p0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2

    :pswitch_0
    check-cast p1, [B

    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/FileLoader;->fileOpener:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/GlideBuilder$1;

    const/4 v0, 0x0

    invoke-direct {p4, v0, p1, p0}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2

    :pswitch_1
    check-cast p1, Lcom/bumptech/glide/load/model/GlideUrl;

    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/bumptech/glide/integration/okhttp3/OkHttpStreamFetcher;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/FileLoader;->fileOpener:Ljava/lang/Object;

    check-cast p0, Lokhttp3/Call$Factory;

    invoke-direct {p3, p0, p1}, Lcom/bumptech/glide/integration/okhttp3/OkHttpStreamFetcher;-><init>(Lokhttp3/Call$Factory;Lcom/bumptech/glide/load/model/GlideUrl;)V

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2

    :pswitch_2
    check-cast p1, Ljava/io/File;

    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/FileLoader;->fileOpener:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/model/FileLoader$FileOpener;

    const/4 v0, 0x2

    invoke-direct {p4, v0, p1, p0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handles(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/model/FileLoader;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data:image"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, [B

    const/4 p0, 0x1

    return p0

    :pswitch_1
    check-cast p1, Lcom/bumptech/glide/load/model/GlideUrl;

    const/4 p0, 0x1

    return p0

    :pswitch_2
    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
