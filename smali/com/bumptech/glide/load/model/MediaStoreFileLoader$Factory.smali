.class public final Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final context:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 3

    iget v0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lcom/bumptech/glide/load/model/MediaStoreFileLoader;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lcom/bumptech/glide/load/model/MediaStoreFileLoader;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_1
    new-instance v0, Lcom/bumptech/glide/load/model/AssetUriLoader;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p1

    iget-object p0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/bumptech/glide/load/model/AssetUriLoader;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p1

    iget-object p0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0

    :pswitch_3
    new-instance p1, Lcom/bumptech/glide/load/model/AssetUriLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/bumptech/glide/load/model/AssetUriLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;)V

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/bumptech/glide/load/model/AssetUriLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/bumptech/glide/load/model/MediaStoreFileLoader;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-void

    :pswitch_1
    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-class p0, Ljava/io/InputStream;

    return-object p0

    :pswitch_0
    const-class p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :pswitch_1
    const-class p0, Landroid/content/res/AssetFileDescriptor;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public open(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;->context:Landroid/content/Context;

    invoke-static {p0, p0, p2, p3}, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->getDrawable(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
