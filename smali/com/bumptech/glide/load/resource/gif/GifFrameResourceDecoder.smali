.class public final Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bitmapPool:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->$r8$classId:I

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->bitmapPool:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6

    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    new-instance v1, Lcom/koushikdutta/async/Util$8;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->bitmapPool:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object p0, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v2, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    invoke-direct {v1, p1, p0, v2}, Lcom/koushikdutta/async/Util$8;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Lcom/koushikdutta/async/Util$8;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/koushikdutta/async/Util$8;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->bitmapPool:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object p0, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v2, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    const/16 v3, 0xb

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/koushikdutta/async/Util$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Lcom/koushikdutta/async/Util$8;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;

    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->bitmapPool:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 2

    iget p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "HUAWEI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HONOR"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p1

    const-wide/32 v0, 0x20000000

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->bitmapPool:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "robolectric"

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->bitmapPool:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0

    :pswitch_1
    check-cast p1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
