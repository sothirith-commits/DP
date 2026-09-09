.class public final Lcom/bumptech/glide/load/resource/file/FileResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# instance fields
.field public final synthetic $r8$classId:I

.field public final data:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    return-void
.end method

.method private final recycle$com$bumptech$glide$load$resource$bitmap$UnitBitmapDecoder$NonOwnedBitmapResource()V
    .locals 0

    return-void
.end method

.method private final recycle$com$bumptech$glide$load$resource$bytes$BytesResource()V
    .locals 0

    return-void
.end method

.method private final recycle$com$bumptech$glide$load$resource$file$FileResource()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-class p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :pswitch_0
    const-class p0, [B

    return-object p0

    :pswitch_1
    const-class p0, Landroid/graphics/Bitmap;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    move-result p0

    mul-int/2addr p0, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v0

    mul-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x2

    return v0

    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    check-cast p0, [B

    array-length p0, p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final recycle()V
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->clearAnimationCallbacks()V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
