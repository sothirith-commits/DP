.class public final Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;
.implements Lcom/bumptech/glide/load/engine/Initializable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bitmap:Ljava/lang/Object;

.field public final bitmapPool:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Ljava/lang/Object;

    invoke-static {v0, p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Ljava/lang/Object;

    const-string p1, "BitmapPool must not be null"

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Ljava/lang/Object;

    return-void
.end method

.method public static obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-class p0, Landroid/graphics/drawable/BitmapDrawable;

    return-object p0

    :pswitch_0
    const-class p0, Landroid/graphics/Bitmap;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final initialize()V
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/engine/Resource;

    instance-of v0, p0, Lcom/bumptech/glide/load/engine/Initializable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bumptech/glide/load/engine/Initializable;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Initializable;->initialize()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final recycle()V
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmapPool:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->bitmap:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
