.class public final Lcom/bumptech/glide/load/data/InputStreamRewinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataRewinder;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bufferedStream:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    const/high16 p0, 0x500000

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    return-void
.end method

.method private final cleanup$com$bumptech$glide$load$data$DataRewinderRegistry$DefaultRewinder()V
    .locals 0

    return-void
.end method

.method private final cleanup$com$bumptech$glide$load$data$ParcelFileDescriptorRewinder()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public rewindAndGet()Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->rewind()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final rewindAndGet()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->rewind()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->reset()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
