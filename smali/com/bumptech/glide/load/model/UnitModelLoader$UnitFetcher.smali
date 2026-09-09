.class public final Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final resource:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->$r8$classId:I

    iput-object p2, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->resource:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final cancel$com$bumptech$glide$load$model$ByteBufferFileLoader$ByteBufferFetcher()V
    .locals 0

    return-void
.end method

.method private final cancel$com$bumptech$glide$load$model$UnitModelLoader$UnitFetcher()V
    .locals 0

    return-void
.end method

.method private final cleanup$com$bumptech$glide$load$model$ByteBufferFileLoader$ByteBufferFetcher()V
    .locals 0

    return-void
.end method

.method private final cleanup$com$bumptech$glide$load$model$UnitModelLoader$UnitFetcher()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->$r8$classId:I

    return-void
.end method

.method public final cleanup()V
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->$r8$classId:I

    return-void
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-class p0, Ljava/nio/ByteBuffer;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->resource:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1

    iget p1, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    :try_start_0
    iget-object p0, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->resource:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->fromFile(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ByteBufferFileLoader"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to obtain ByteBuffer for file"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/model/UnitModelLoader$UnitFetcher;->resource:Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
