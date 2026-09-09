.class public final Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager;I)V
    .locals 0

    iput p2, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->$r8$classId:I

    iput-object p1, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->assetManager:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2

    iget p1, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/bumptech/glide/load/model/AssetUriLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->assetManager:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p0}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lcom/bumptech/glide/load/model/AssetUriLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->assetManager:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p0}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final buildFetcher(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 1

    iget p0, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
