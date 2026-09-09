.class public final Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    iput p2, p0, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;->$r8$classId:I

    iput-object p1, p0, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;->resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 3

    iget v0, p0, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/bumptech/glide/load/model/AssetUriLoader;

    const-class v1, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p1

    iget-object p0, p0, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/bumptech/glide/load/model/AssetUriLoader;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p1

    iget-object p0, p0, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0

    :pswitch_1
    new-instance p1, Lcom/bumptech/glide/load/model/AssetUriLoader;

    sget-object v0, Lcom/bumptech/glide/load/model/UnitModelLoader;->INSTANCE:Lcom/bumptech/glide/load/model/UnitModelLoader;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;->resources:Landroid/content/res/Resources;

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
