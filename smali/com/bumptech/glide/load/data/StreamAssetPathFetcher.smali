.class public final Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;
.super Lcom/bumptech/glide/load/data/LocalUriFetcher;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;->$r8$classId:I

    const/4 p3, 0x1

    invoke-direct {p0, p3, p2, p1}, Lcom/bumptech/glide/load/data/LocalUriFetcher;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final close(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    :pswitch_0
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-class p0, Landroid/content/res/AssetFileDescriptor;

    return-object p0

    :pswitch_0
    const-class p0, Ljava/io/InputStream;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
