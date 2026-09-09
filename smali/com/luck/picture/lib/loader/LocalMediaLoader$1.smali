.class public final Lcom/luck/picture/lib/loader/LocalMediaLoader$1;
.super Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$query:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->$r8$classId:I

    iput-object p2, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->val$query:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;-><init>()V

    return-void
.end method

.method private final doInBackground$com$luck$picture$lib$basic$PictureCommonFragment$9()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->val$query:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    if-nez p0, :cond_0

    :goto_0
    move-object p0, v3

    goto :goto_3

    :cond_0
    const-string v4, "output"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    :goto_2
    iget-object v6, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v6, v6, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-eq v6, v1, :cond_3

    if-nez v5, :cond_4

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p0, v4, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    :cond_7
    iget-object p0, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object p0, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-ne v3, v1, :cond_b

    :try_start_0
    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioDir:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p0

    iget-object v1, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/luck/picture/lib/basic/PictureContentResolver;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/io/FileInputStream;

    iget-object v1, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_4
    iget-object v1, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v1, :cond_a

    move-object v1, v3

    goto :goto_5

    :cond_a
    :try_start_1
    iget-object v1, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioFileName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v6, v5, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    iget-object v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioDir:Ljava/lang/String;

    invoke-static {v4, v6, v1, v3, v5}, Lcom/luck/picture/lib/utils/PictureFileUtils;->createCameraFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/luck/picture/lib/utils/PictureFileUtils;->writeFileFromIS(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p0

    iget-object v3, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/luck/picture/lib/utils/MediaUtils;->deleteUri(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_7
    iget-object p0, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->buildLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v3

    iput-boolean v2, v3, Lcom/luck/picture/lib/entity/LocalMedia;->isCameraSource:Z

    :goto_8
    return-object v3
.end method


# virtual methods
.method public final doInBackground()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    const-string v6, "date_modified DESC"

    const-string v7, ") AND "

    const-string v8, " OR media_type=?"

    const-string v9, "(media_type=?"

    const-string v10, "media_type=?"

    const-string v11, " AND "

    const/4 v12, 0x1

    iget-object v14, v0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->this$0:Ljava/lang/Object;

    const/4 v15, 0x3

    const/4 v13, 0x2

    iget v5, v0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    check-cast v14, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    iget-object v0, v14, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/luck/picture/lib/loader/LocalMediaLoader;->QUERY_URI:Landroid/net/Uri;

    sget-object v18, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getDurationCondition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getFileSizeCondition()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v14, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v3, v2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-eqz v3, :cond_3

    if-eq v3, v12, :cond_2

    if-eq v3, v13, :cond_1

    if-eq v3, v15, :cond_0

    const/16 v19, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getAudioMimeTypeCondition()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object/from16 v19, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v3, v8, v4, v11}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget v1, v2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-eqz v1, :cond_7

    if-eq v1, v12, :cond_6

    if-eq v1, v13, :cond_5

    if-eq v1, v15, :cond_4

    const/16 v20, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v13

    :goto_2
    move-object/from16 v20, v13

    goto :goto_3

    :cond_5
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_6
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_7
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :goto_3
    iget-object v1, v2, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    move-object/from16 v21, v6

    goto :goto_5

    :cond_8
    iget-object v6, v2, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    goto :goto_4

    :goto_5
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_15

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-lez v3, :cond_15

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "_id"

    const-string v8, "mime_type"

    if-eqz v6, :cond_c

    :try_start_1
    const-string v6, "bucket_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    const-wide/16 v11, 0x1

    if-nez v6, :cond_9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_7
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    new-instance v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    iput-wide v9, v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    const-string v11, "bucket_display_name"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-object v11, v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    invoke-static {v12}, Lcom/luck/picture/lib/utils/ValueOf;->toInt(Ljava/lang/Object;)I

    move-result v7

    iput v7, v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    invoke-static {v13, v14, v8}, Lcom/luck/picture/lib/utils/MediaUtils;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    iput-object v8, v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iget-wide v10, v9, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/luck/picture/lib/utils/ValueOf;->toInt(Ljava/lang/Object;)I

    move-result v10

    iput v10, v9, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    add-int/2addr v6, v10

    goto :goto_8

    :cond_d
    new-instance v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    iget-object v5, v2, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxDir:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/luck/picture/lib/loader/SandboxFileLoader;->loadInAppSandboxFolderFile(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v5, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iget v11, v5, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    add-int/2addr v6, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lcom/luck/picture/lib/utils/MediaUtils;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    iget-object v7, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/luck/picture/lib/utils/PictureFileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    goto :goto_9

    :cond_e
    new-instance v7, Ljava/io/File;

    iget-object v8, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    :goto_9
    cmp-long v7, v9, v7

    if-lez v7, :cond_10

    iget-object v7, v5, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    iput-object v7, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    iget-object v5, v5, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    iput-object v5, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    goto :goto_a

    :cond_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v10, v5}, Lcom/luck/picture/lib/utils/MediaUtils;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    :goto_a
    if-nez v6, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    :goto_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_11

    :cond_11
    :try_start_2
    new-instance v5, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    invoke-direct {v5, v15}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    const-wide/16 v5, -0x1

    iput-wide v5, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    iget-object v5, v2, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-ne v2, v15, :cond_12

    const v2, 0x7f13039c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_12
    const v2, 0x7f1303a1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_13
    iget-object v0, v2, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    :goto_c
    iput-object v0, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_b

    :goto_d
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, Lcom/luck/picture/lib/loader/LocalMediaLoader;->QUERY_URI:Landroid/net/Uri;

    const-string v2, "IBridgeMediaLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAllMedia Data Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    :goto_e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_10

    :goto_f
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v0

    :cond_15
    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_e

    :cond_16
    :goto_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    :goto_11
    return-object v4

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->doInBackground$com$luck$picture$lib$basic$PictureCommonFragment$9()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v14, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    iget-object v0, v14, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/luck/picture/lib/loader/LocalMediaLoader;->QUERY_URI:Landroid/net/Uri;

    sget-object v18, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getDurationCondition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getFileSizeCondition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v5, v4, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-eqz v5, :cond_1b

    if-eq v5, v12, :cond_1a

    if-eq v5, v13, :cond_19

    if-eq v5, v15, :cond_18

    const/16 v19, 0x0

    goto :goto_13

    :cond_18
    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getAudioMimeTypeCondition()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_12
    move-object/from16 v19, v2

    goto :goto_13

    :cond_19
    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1a
    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1b
    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v5, v8, v10, v11}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :goto_13
    iget v2, v4, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-eqz v2, :cond_1f

    if-eq v2, v12, :cond_1e

    if-eq v2, v13, :cond_1d

    if-eq v2, v15, :cond_1c

    const/16 v20, 0x0

    goto :goto_15

    :cond_1c
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    :goto_14
    move-object/from16 v20, v2

    goto :goto_15

    :cond_1d
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_1e
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_1f
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :goto_15
    iget-object v2, v4, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    :goto_16
    move-object/from16 v21, v6

    goto :goto_17

    :cond_20
    iget-object v6, v4, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    goto :goto_16

    :goto_17
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_28

    :try_start_4
    new-instance v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_28

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_21
    invoke-virtual {v14, v2}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->parseLocalMedia(Landroid/database/Cursor;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v6

    if-nez v6, :cond_22

    goto :goto_18

    :cond_22
    iget-object v7, v6, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iget-object v8, v6, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    iget-object v9, v6, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    invoke-static {v14, v7, v8, v9, v1}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->access$000(Lcom/luck/picture/lib/loader/LocalMediaLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v7

    iget-wide v8, v6, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    iput-wide v8, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    invoke-virtual {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    add-int/2addr v8, v12

    iput v8, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    iget-wide v8, v6, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    iput-wide v8, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    add-int/2addr v6, v12

    iput v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    :goto_18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, v4, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxDir:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/luck/picture/lib/loader/SandboxFileLoader;->loadInAppSandboxFolderFile(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    iget v8, v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    add-int/2addr v7, v8

    iput v7, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget v6, v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    const/16 v7, 0x3c

    if-le v7, v6, :cond_24

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_23

    invoke-virtual {v5, v8, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    new-instance v7, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    invoke-direct {v7, v13}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_19

    :catchall_1
    move-exception v0

    goto :goto_1d

    :catch_1
    move-exception v0

    goto :goto_1b

    :cond_23
    new-instance v6, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    invoke-direct {v6, v13}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_24
    :goto_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_28

    new-instance v6, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    invoke-direct {v6, v15}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v7, v7, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iput-object v7, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v6, v6, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    iput-object v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    iget-object v6, v4, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_26

    iget v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-ne v4, v15, :cond_25

    const v7, 0x7f13039c

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_25
    const v8, 0x7f1303a1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_26
    iget-object v0, v4, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    :goto_1a
    iput-object v0, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    const-wide/16 v9, -0x1

    iput-wide v9, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    iput-object v5, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1e

    :goto_1b
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_29

    :goto_1c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1f

    :goto_1d
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_27
    throw v0

    :cond_28
    :goto_1e
    if-eqz v2, :cond_29

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_1c

    :cond_29
    :goto_1f
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->val$query:Ljava/lang/Object;

    iget v3, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    invoke-static {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    sget-object p0, Lcom/luck/picture/lib/entity/LocalMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    check-cast v2, Lcom/umeng/commonsdk/statistics/common/a$a;

    if-eqz v2, :cond_6

    iget-object p0, v2, Lcom/umeng/commonsdk/statistics/common/a$a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-boolean v2, v2, Lcom/umeng/commonsdk/statistics/common/a$a;->b:Z

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v1, v2, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v2, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v1, v2, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v2, p1}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->bindAlbumData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v2, :cond_4

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreloadFirst:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    goto :goto_1

    :cond_3
    iget-wide v0, v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->loadFirstPageMediaData(J)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showDataNull()V

    :cond_6
    :goto_1
    return-void

    :pswitch_0
    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-static {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    iget-object p0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/luck/picture/lib/basic/PictureMediaScannerConnection;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p1, Lcom/luck/picture/lib/entity/LocalMedia;->realPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/basic/PictureMediaScannerConnection;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchCameraMediaResult(Lcom/luck/picture/lib/entity/LocalMedia;)V

    :cond_9
    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const-string p1, ""

    iput-object p1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    return-void

    :pswitch_1
    check-cast p1, Ljava/util/List;

    invoke-static {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    check-cast v2, Lcom/umeng/commonsdk/statistics/common/a$a;

    if-eqz v2, :cond_10

    iget-object p0, v2, Lcom/umeng/commonsdk/statistics/common/a$a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    iget-boolean v2, v2, Lcom/umeng/commonsdk/statistics/common/a$a;->b:Z

    if-eqz v2, :cond_b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v1, v2, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v2, :cond_c

    move-object v1, v2

    goto :goto_3

    :cond_c
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v1, v2, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    :goto_3
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v2, p1}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->bindAlbumData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v2, :cond_e

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreloadFirst:Z

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    goto :goto_4

    :cond_d
    iget-wide v0, v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->loadFirstPageMediaData(J)V

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showDataNull()V

    :cond_10
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
