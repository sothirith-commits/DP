.class public final Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final synthetic $r8$classId:I

.field public final converter:Ljava/lang/Object;

.field public final model:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->$r8$classId:I

    iput-object p2, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->model:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final cancel$com$bumptech$glide$load$model$ByteArrayLoader$Fetcher()V
    .locals 0

    return-void
.end method

.method private final cancel$com$bumptech$glide$load$model$MediaStoreFileLoader$FilePathFetcher()V
    .locals 0

    return-void
.end method

.method private final cleanup$com$bumptech$glide$load$model$ByteArrayLoader$Fetcher()V
    .locals 0

    return-void
.end method

.method private final cleanup$com$bumptech$glide$load$model$MediaStoreFileLoader$FilePathFetcher()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->$r8$classId:I

    return-void
.end method

.method public final cleanup()V
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->$r8$classId:I

    return-void
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-class p0, Ljava/io/File;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/GlideBuilder$1;

    invoke-virtual {p0}, Lcom/bumptech/glide/GlideBuilder$1;->getDataClass()Ljava/lang/Class;

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

    iget p0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->$r8$classId:I

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
    .locals 6

    iget p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->model:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_1
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find file path for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    :goto_3
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/GlideBuilder$1;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->model:Ljava/lang/Object;

    check-cast p0, [B

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/GlideBuilder$1;->convert([B)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
