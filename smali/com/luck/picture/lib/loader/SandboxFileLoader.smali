.class public final Lcom/luck/picture/lib/loader/SandboxFileLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadInAppSandboxFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 27

    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/luck/picture/lib/loader/SandboxFileLoader$1;

    invoke-direct {v0}, Lcom/luck/picture/lib/loader/SandboxFileLoader$1;-><init>()V

    invoke-virtual {v4, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v3

    :cond_1
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v6

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    array-length v0, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_f

    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/luck/picture/lib/utils/MediaUtils;->getMimeTypeFromMediaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v10, v6, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    invoke-static {v9}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    :goto_2
    move/from16 v16, v0

    move-object/from16 p1, v2

    move-object v2, v3

    goto/16 :goto_5

    :cond_2
    iget-object v10, v6, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, v6, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_2

    :cond_3
    const/4 v12, 0x2

    if-ne v10, v12, :cond_5

    invoke-static {v9}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    iget-object v10, v6, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyVideoList:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, v6, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyVideoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_2

    :cond_5
    const/4 v12, 0x3

    if-ne v10, v12, :cond_7

    invoke-static {v9}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    iget-object v10, v6, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyAudioList:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, v6, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyAudioList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v9}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasGif(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-gtz v16, :cond_9

    goto :goto_2

    :cond_9
    const-wide/16 v16, 0x3e8

    if-eqz v2, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/security/MessageDigest;->update([B)V

    new-instance v14, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    invoke-direct {v14, v11, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v14}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v14

    goto :goto_3

    :cond_a
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    div-long v14, v14, v16

    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    invoke-static {v11}, Lcom/luck/picture/lib/utils/ValueOf;->toLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    move-wide/from16 v22, v2

    div-long v2, v20, v16

    invoke-static {v9}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-static {v1, v10}, Lcom/luck/picture/lib/utils/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v11

    move/from16 v16, v0

    iget v0, v11, Lcom/luck/picture/lib/entity/MediaExtraInfo;->width:I

    move/from16 v17, v0

    iget v0, v11, Lcom/luck/picture/lib/entity/MediaExtraInfo;->height:I

    move-wide/from16 v20, v2

    iget-wide v2, v11, Lcom/luck/picture/lib/entity/MediaExtraInfo;->duration:J

    move-wide/from16 v24, v12

    move-wide v11, v2

    move v2, v0

    move/from16 v0, v17

    goto :goto_4

    :cond_b
    move/from16 v16, v0

    move-wide/from16 v20, v2

    invoke-static {v9}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v1, v10}, Lcom/luck/picture/lib/utils/MediaUtils;->getAudioSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v0

    iget v2, v0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->width:I

    iget v3, v0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->height:I

    move v11, v2

    move/from16 v17, v3

    iget-wide v2, v0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->duration:J

    move v0, v11

    move-wide/from16 v24, v12

    move-wide v11, v2

    move/from16 v2, v17

    goto :goto_4

    :cond_c
    invoke-static {v1, v10}, Lcom/luck/picture/lib/utils/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v0

    iget v2, v0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->width:I

    iget v0, v0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->height:I

    move-wide/from16 v24, v12

    const-wide/16 v11, 0x0

    move/from16 v26, v2

    move v2, v0

    move/from16 v0, v26

    :goto_4
    invoke-static {v9}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v9}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    const-wide/16 v17, 0x0

    cmp-long v3, v11, v17

    if-nez v3, :cond_e

    move-object/from16 v2, v19

    goto :goto_5

    :cond_e
    new-instance v3, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {v3}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    iput-wide v14, v3, Lcom/luck/picture/lib/entity/LocalMedia;->id:J

    iput-object v10, v3, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iput-object v10, v3, Lcom/luck/picture/lib/entity/LocalMedia;->realPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/luck/picture/lib/entity/LocalMedia;->fileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    iput-wide v11, v3, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    iget v8, v6, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    iput v8, v3, Lcom/luck/picture/lib/entity/LocalMedia;->chooseModel:I

    iput-object v9, v3, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    iput v0, v3, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    iput v2, v3, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    move-wide/from16 v8, v24

    iput-wide v8, v3, Lcom/luck/picture/lib/entity/LocalMedia;->size:J

    move-wide/from16 v8, v22

    iput-wide v8, v3, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    move-wide/from16 v8, v20

    iput-wide v8, v3, Lcom/luck/picture/lib/entity/LocalMedia;->dateAddedTime:J

    iput-object v10, v3, Lcom/luck/picture/lib/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    move-object/from16 v2, v19

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object v3, v2

    move/from16 v0, v16

    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_f
    move-object v2, v3

    return-object v2
.end method

.method public static loadInAppSandboxFolderFile(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 3

    invoke-static {p0, p1}, Lcom/luck/picture/lib/loader/SandboxFileLoader;->loadInAppSandboxFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    iget-object v1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    iput-object v1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    iget-object v1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    iget-wide v1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    iput-wide v1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    iput-object p0, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
