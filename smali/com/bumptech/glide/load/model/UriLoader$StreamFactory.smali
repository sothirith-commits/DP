.class public final Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 0

    iput p2, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->$r8$classId:I

    iput-object p1, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lcom/bumptech/glide/load/data/LocalUriFetcher;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0

    iget p1, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/bumptech/glide/load/model/UriLoader;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/UriLoader;-><init>(Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lcom/bumptech/glide/load/model/UriLoader;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/UriLoader;-><init>(Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/bumptech/glide/load/model/UriLoader;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/UriLoader;-><init>(Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
