.class public final synthetic Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda5;->f$0:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda5;->f$0:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    const-string v3, "this$0"

    iget v0, v0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->loadPreview()V

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    move-object v3, v2

    const/4 v1, 0x0

    goto/16 :goto_13

    :cond_1
    iget-object v4, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileType:Ljava/lang/String;

    const-string v5, "gif"

    invoke-static {v4, v5, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    const/16 v6, 0x2e

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileType:Ljava/lang/String;

    const-string v5, "png"

    invoke-static {v4, v5, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileType:Ljava/lang/String;

    const-string v7, "webp"

    invoke-static {v4, v7, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    move-object v5, v7

    goto :goto_2

    :cond_4
    iget-object v4, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileType:Ljava/lang/String;

    const-string v7, "jpeg"

    invoke-static {v4, v7, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    const-string v7, "jpg"

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileType:Ljava/lang/String;

    invoke-static {v4, v7, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    iget-object v4, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->imageUrl:Ljava/lang/String;

    invoke-static {v4, v6, v5}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f

    invoke-static {v4, v5}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "temp_icon_download_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1e

    invoke-virtual {v0, v7, v8, v6}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v7, 0x3c

    invoke-virtual {v0, v7, v8, v6}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)V

    new-instance v6, Lokhttp3/OkHttpClient;

    invoke-direct {v6, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v7, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    sget-object v7, Lcom/deepalhome/launcher/http/OpenListProxy;->INSTANCE:Lcom/deepalhome/launcher/http/OpenListProxy;

    iget-object v8, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/deepalhome/launcher/http/OpenListProxy;->proxyAuthHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-object v3, v2

    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_7
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    new-instance v7, Lokhttp3/internal/connection/RealCall;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v0, v8}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    invoke-virtual {v7}, Lokhttp3/internal/connection/RealCall;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_8
    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_9

    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    goto :goto_4

    :cond_9
    iget-wide v6, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileSize:J

    :goto_4
    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-lez v11, :cond_a

    goto :goto_5

    :cond_a
    iget-wide v6, v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileSize:J

    :goto_5
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v11, :cond_d

    :try_start_2
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/16 v0, 0x2000

    :try_start_3
    new-array v0, v0, [B

    move-wide v13, v9

    :goto_6
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v3, -0x1

    if-eq v15, v3, :cond_c

    :try_start_4
    invoke-virtual {v12, v0, v8, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v2

    int-to-long v1, v15

    add-long/2addr v13, v1

    cmp-long v1, v6, v9

    if-lez v1, :cond_b

    const/16 v1, 0x64

    int-to-long v1, v1

    mul-long/2addr v1, v13

    :try_start_5
    div-long v16, v1, v6

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x64

    invoke-static/range {v16 .. v21}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(JJJ)J

    move-result-wide v1

    long-to-int v1, v1

    new-instance v2, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    const/4 v15, 0x5

    invoke-direct {v2, v1, v15, v3}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v15, 0x1

    goto :goto_8

    :catchall_0
    move-exception v0

    :goto_7
    move-object v2, v0

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v3, v13, v14}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->humanReadableByteCountBin(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;

    const/4 v15, 0x1

    invoke-direct {v2, v3, v1, v15}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_8
    move-object v2, v3

    move v1, v15

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :cond_c
    move-object v3, v2

    :try_start_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v1, 0x0

    :try_start_7
    invoke-static {v12, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {v11, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_d

    :catchall_2
    move-exception v0

    :goto_9
    move-object v2, v0

    goto :goto_c

    :catchall_3
    move-exception v0

    :goto_a
    const/4 v1, 0x0

    move-object v2, v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_a

    :goto_b
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_a
    invoke-static {v12, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_6
    move-exception v0

    move-object v3, v2

    const/4 v1, 0x0

    goto :goto_9

    :goto_c
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    move-object v5, v0

    :try_start_c
    invoke-static {v11, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    :cond_d
    move-object v3, v2

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v9

    if-lez v0, :cond_15

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x1e00000

    cmp-long v0, v6, v8

    if-lez v0, :cond_e

    goto :goto_11

    :cond_e
    sget-object v0, Lcom/deepalhome/launcher/floating/IconHashCache;->INSTANCE:Lcom/deepalhome/launcher/floating/IconHashCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/floating/IconHashCache;->buildExistingIconHashes()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v4}, Lcom/deepalhome/launcher/floating/IconHashCache;->calculateFileMd5Streaming(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->listIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_10

    goto :goto_e

    :cond_10
    sget-object v7, Lcom/deepalhome/launcher/floating/IconHashCache;->INSTANCE:Lcom/deepalhome/launcher/floating/IconHashCache;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/deepalhome/launcher/floating/IconHashCache;->calculateFileMd5Streaming(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_f

    :cond_11
    move-object v6, v1

    :goto_f
    if-eqz v6, :cond_12

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-object v0, v6

    goto :goto_10

    :cond_12
    invoke-virtual {v3, v4, v5}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->importToLibrary(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_10

    :cond_13
    invoke-virtual {v3, v4, v5}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->importToLibrary(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v2, :cond_14

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/floating/IconHashCache;->saveHash(Ljava/io/File;Ljava/lang/String;)V

    :cond_14
    :goto_10
    move-object v1, v0

    goto :goto_13

    :cond_15
    :goto_11
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_13

    :catch_1
    :goto_12
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_13
    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v3, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
