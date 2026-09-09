.class public final Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;
.super Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/luck/picture/lib/loader/LocalMediaLoader;

.field public final synthetic val$bucketId:J

.field public final synthetic val$listener:Lcom/luck/picture/lib/interfaces/OnQueryDataResultListener;

.field public final synthetic val$page:I

.field public final synthetic val$pageSize:I


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/loader/LocalMediaLoader;JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/loader/LocalMediaLoader;

    iput-wide p2, p0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;->val$bucketId:J

    iput p4, p0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;->val$pageSize:I

    iput p5, p0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;->val$page:I

    iput-object p6, p0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;->val$listener:Lcom/luck/picture/lib/interfaces/OnQueryDataResultListener;

    invoke-direct {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground()Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "image/*"

    iget-wide v4, v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;->val$bucketId:J

    iget-object v6, v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/loader/LocalMediaLoader;

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v4, v5}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getPageSelection(J)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v9, v6, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v10, v6, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mContext:Landroid/content/Context;

    :try_start_1
    invoke-virtual {v6, v4, v5}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getPageSelectionArgs(J)[Ljava/lang/String;

    move-result-object v6

    iget v11, v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;->val$pageSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v0, v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;->val$page:I

    add-int/lit8 v12, v0, -0x1

    mul-int/2addr v12, v11

    :try_start_2
    iget-object v13, v9, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "date_modified DESC"

    goto :goto_0

    :cond_0
    iget-object v13, v9, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    :goto_0
    invoke-static {v8, v6, v11, v12, v13}, Lcom/luck/picture/lib/utils/MediaUtils;->createQueryArgsBundle(Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v11, Lcom/luck/picture/lib/loader/LocalMediaLoader;->QUERY_URI:Landroid/net/Uri;

    sget-object v12, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8, v11, v12, v6, v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_14

    :try_start_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    const/4 v12, 0x0

    if-lez v11, :cond_10

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    sget-object v11, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    aget-object v13, v11, v12

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    aget-object v14, v11, v2

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    aget-object v15, v11, v1

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x3

    aget-object v7, v11, v16

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const/16 v16, 0x4

    aget-object v12, v11, v16

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const/16 v16, 0x5

    aget-object v1, v11, v16

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const/16 v16, 0x6

    aget-object v2, v11, v16

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const/16 v16, 0x7

    move-object/from16 v17, v10

    aget-object v10, v11, v16

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const/16 v16, 0x8

    move/from16 v18, v0

    aget-object v0, v11, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const/16 v16, 0x9

    move-wide/from16 v19, v4

    aget-object v4, v11, v16

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xa

    aget-object v5, v11, v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const/16 v16, 0xb

    aget-object v11, v11, v16

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move/from16 v16, v4

    move/from16 v21, v5

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v5, v13}, Lcom/luck/picture/lib/utils/MediaUtils;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    const-string v13, "image/jpeg"

    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-static {v14}, Lcom/luck/picture/lib/utils/MediaUtils;->getMimeTypeFromMediaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasGif(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    :goto_2
    move-object/from16 v22, v3

    :goto_3
    move-object/from16 v23, v8

    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_b

    :cond_2
    invoke-virtual {v13, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v22, v3

    iget-boolean v3, v9, Lcom/luck/picture/lib/config/SelectorConfig;->isWebp:Z

    if-nez v3, :cond_4

    const-string v3, "image/webp"

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_5
    goto :goto_3

    :cond_4
    iget-boolean v3, v9, Lcom/luck/picture/lib/config/SelectorConfig;->isBmp:Z

    if-nez v3, :cond_5

    invoke-static {v13}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasBmp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_6
    goto :goto_5

    :cond_5
    iget-boolean v3, v9, Lcom/luck/picture/lib/config/SelectorConfig;->isHeic:Z

    if-nez v3, :cond_7

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_7

    :cond_6
    const-string v3, "image/heic"

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    :goto_7
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v24, v3

    const/16 v3, 0x5a

    if-eq v11, v3, :cond_9

    const/16 v3, 0x10e

    if-ne v11, v3, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v7, v23

    move/from16 v3, v24

    goto :goto_9

    :cond_9
    :goto_8
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v7, v23

    :goto_9
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v8

    move/from16 v8, v16

    move/from16 v16, v7

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move/from16 v24, v3

    move-wide/from16 v25, v7

    move/from16 v3, v21

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v14}, Lcom/luck/picture/lib/config/PictureMimeType;->getUrlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget-boolean v3, v9, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterSizeDuration:Z

    const-wide/16 v27, 0x0

    if-eqz v3, :cond_b

    cmp-long v3, v1, v27

    if-lez v3, :cond_b

    const-wide/16 v29, 0x400

    cmp-long v3, v1, v29

    if-gez v3, :cond_b

    :goto_a
    goto/16 :goto_4

    :cond_b
    invoke-static {v13}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v13}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v9, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterSizeDuration:Z

    if-eqz v3, :cond_d

    cmp-long v3, v11, v27

    if-gtz v3, :cond_d

    goto :goto_a

    :cond_d
    new-instance v3, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {v3}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    iput-wide v4, v3, Lcom/luck/picture/lib/entity/LocalMedia;->id:J

    move-wide/from16 v4, v25

    iput-wide v4, v3, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    iput-object v15, v3, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iput-object v14, v3, Lcom/luck/picture/lib/entity/LocalMedia;->realPath:Ljava/lang/String;

    iput-object v0, v3, Lcom/luck/picture/lib/entity/LocalMedia;->fileName:Ljava/lang/String;

    iput-object v10, v3, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    iput-wide v11, v3, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    iget v0, v9, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    iput v0, v3, Lcom/luck/picture/lib/entity/LocalMedia;->chooseModel:I

    iput-object v13, v3, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    move/from16 v0, v24

    iput v0, v3, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    move/from16 v0, v16

    iput v0, v3, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    iput-wide v1, v3, Lcom/luck/picture/lib/entity/LocalMedia;->size:J

    iput-wide v7, v3, Lcom/luck/picture/lib/entity/LocalMedia;->dateAddedTime:J

    :goto_b
    if-nez v3, :cond_e

    move-object/from16 v0, v23

    goto :goto_c

    :cond_e
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_d

    :cond_f
    move-object v8, v0

    move-object/from16 v10, v17

    move/from16 v0, v18

    move-wide/from16 v4, v19

    move-object/from16 v3, v22

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v6

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object v7, v6

    goto :goto_10

    :cond_10
    move/from16 v18, v0

    move-wide/from16 v19, v4

    move-object v0, v8

    move-object/from16 v17, v10

    :goto_d
    const-wide/16 v1, -0x1

    cmp-long v1, v19, v1

    if-nez v1, :cond_11

    move/from16 v1, v18

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget-object v1, v9, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxDir:Ljava/lang/String;

    move-object/from16 v3, v17

    invoke-static {v3, v1}, Lcom/luck/picture/lib/loader/SandboxFileLoader;->loadInAppSandboxFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_e

    :cond_11
    const/4 v2, 0x1

    :cond_12
    :goto_e
    new-instance v1, Lcom/luck/picture/lib/entity/MediaData;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_13

    goto :goto_f

    :cond_13
    const/4 v2, 0x0

    :goto_f
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, v1, Lcom/luck/picture/lib/entity/MediaData;->isHasNextMore:Z

    iput-object v0, v1, Lcom/luck/picture/lib/entity/MediaData;->data:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_11

    :cond_14
    if-eqz v6, :cond_15

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_15
    new-instance v1, Lcom/luck/picture/lib/entity/MediaData;

    invoke-direct {v1}, Lcom/luck/picture/lib/entity/MediaData;-><init>()V

    goto :goto_11

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    goto :goto_12

    :catch_1
    move-exception v0

    const/4 v7, 0x0

    :goto_10
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Lcom/luck/picture/lib/loader/LocalMediaLoader;->QUERY_URI:Landroid/net/Uri;

    const-string v1, "IBridgeMediaLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMedia Page Data Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/luck/picture/lib/entity/MediaData;

    invoke-direct {v1}, Lcom/luck/picture/lib/entity/MediaData;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_16

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_16
    :goto_11
    return-object v1

    :catchall_2
    move-exception v0

    :goto_12
    if-eqz v7, :cond_17

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/luck/picture/lib/entity/MediaData;

    invoke-static {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    iget-object p0, p0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;->val$listener:Lcom/luck/picture/lib/interfaces/OnQueryDataResultListener;

    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/luck/picture/lib/entity/MediaData;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-boolean p1, p1, Lcom/luck/picture/lib/entity/MediaData;->isHasNextMore:Z

    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/interfaces/OnQueryDataResultListener;->onComplete(Ljava/util/ArrayList;Z)V

    :cond_1
    return-void
.end method
