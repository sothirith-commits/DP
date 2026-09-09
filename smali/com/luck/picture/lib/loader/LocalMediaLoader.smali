.class public final Lcom/luck/picture/lib/loader/LocalMediaLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final QUERY_URI:Landroid/net/Uri;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->QUERY_URI:Landroid/net/Uri;

    const-string v9, "_display_name"

    const-string v10, "bucket_id"

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "duration"

    const-string v7, "_size"

    const-string v8, "bucket_display_name"

    const-string v11, "date_added"

    const-string v12, "orientation"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;I)V
    .locals 0

    iput p3, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-void
.end method

.method public static access$000(Lcom/luck/picture/lib/loader/LocalMediaLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    iput-object p3, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    iput-object p1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    iput-object p2, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public static getSelectionArgsForPageSingleMediaType(IJ)[Ljava/lang/String;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/luck/picture/lib/utils/ValueOf;->toString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final loadPageMediaData$com$luck$picture$lib$loader$LocalMediaLoader(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAudioMimeTypeCondition()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyAudioList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v3, " AND "

    goto :goto_1

    :cond_0
    const-string v3, " OR "

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mime_type=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDurationCondition()Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    int-to-long v1, p0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "="

    filled-new-array {p0, v2, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d <%s duration and duration <= %d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFileSizeCondition()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "="

    filled-new-array {p0, v2, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d <%s _size and _size <= %d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getImageMimeTypeCondition()Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v4, " AND "

    goto :goto_1

    :cond_0
    const-string v4, " OR "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mime_type=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/ArrayList;

    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " AND (mime_type!=\'image/gif\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isWebp:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/ArrayList;

    const-string v2, "image/webp"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " AND (mime_type!=\'image/webp\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isBmp:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/ArrayList;

    const-string v2, "image/bmp"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/ArrayList;

    const-string v2, "image/x-ms-bmp"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/ArrayList;

    const-string v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " AND (mime_type!=\'image/bmp\') AND (mime_type!=\'image/x-ms-bmp\') AND (mime_type!=\'image/vnd.wap.wbmp\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isHeic:Z

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/ArrayList;

    const-string v0, "image/heic"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, " AND (mime_type!=\'image/heic\')"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageSelection(J)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getDurationCondition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getFileSizeCondition()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const-string v3, "bucket_id=? AND "

    const-string v4, " AND "

    const-wide/16 v5, -0x1

    const-string v7, ") AND "

    const-string v8, "(media_type=?"

    if-eqz v2, :cond_6

    const/4 v9, 0x1

    if-eq v2, v9, :cond_4

    const/4 v9, 0x2

    if-eq v2, v9, :cond_2

    const/4 v9, 0x3

    if-eq v2, v9, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getAudioMimeTypeCondition()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0, v4, v0, v7}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    cmp-long p1, p1, v5

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0, v3, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0, v4, v0, v7}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    cmp-long p1, p1, v5

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {p0, v3, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmp-long p1, p1, v5

    if-nez p1, :cond_5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") AND bucket_id=? AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object p0

    const-string v9, " OR media_type=?"

    invoke-static {v8, v2, v9, p0, v4}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p1, p1, v5

    if-nez p1, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    invoke-static {p0, v3, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public getPageSelectionArgs(J)[Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v1, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getSelectionArgsForPageSingleMediaType(IJ)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getSelectionArgsForPageSingleMediaType(IJ)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v1, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getSelectionArgsForPageSingleMediaType(IJ)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/16 v2, -0x1

    cmp-long p0, p1, v2

    if-nez p0, :cond_4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/utils/ValueOf;->toString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, v0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVideoMimeTypeCondition()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyVideoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v3, " AND "

    goto :goto_1

    :cond_0
    const-string v3, " OR "

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mime_type=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loadAllAlbum(Lcom/umeng/commonsdk/statistics/common/a$a;)V
    .locals 2

    iget v0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;)V

    return-void

    :pswitch_0
    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V
    .locals 8

    iget v0, p0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move v5, p4

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;-><init>(Lcom/luck/picture/lib/loader/LocalMediaLoader;JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;)V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public parseLocalMedia(Landroid/database/Cursor;)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 24

    move-object/from16 v0, p1

    sget-object v1, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    aget-object v6, v1, v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v1, v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x6

    aget-object v8, v1, v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x7

    aget-object v9, v1, v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x8

    aget-object v10, v1, v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x9

    aget-object v11, v1, v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0xa

    aget-object v12, v1, v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0xb

    aget-object v1, v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move v2, v11

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v14, v4}, Lcom/luck/picture/lib/utils/MediaUtils;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v4, "image/jpeg"

    :cond_0
    move-wide/from16 v16, v11

    const-string v11, "image/*"

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    const/16 v18, 0x0

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    if-eqz v12, :cond_1

    invoke-static {v3}, Lcom/luck/picture/lib/utils/MediaUtils;->getMimeTypeFromMediaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasGif(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    return-object v18

    :cond_1
    move-object/from16 v12, v19

    :cond_2
    invoke-virtual {v12, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-object v18

    :cond_3
    iget-boolean v11, v4, Lcom/luck/picture/lib/config/SelectorConfig;->isWebp:Z

    if-nez v11, :cond_4

    const-string v11, "image/webp"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    return-object v18

    :cond_4
    iget-boolean v11, v4, Lcom/luck/picture/lib/config/SelectorConfig;->isBmp:Z

    if-nez v11, :cond_5

    invoke-static {v12}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasBmp(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    return-object v18

    :cond_5
    iget-boolean v11, v4, Lcom/luck/picture/lib/config/SelectorConfig;->isHeic:Z

    if-nez v11, :cond_7

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_0

    :cond_6
    const-string v11, "image/heic"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    return-object v18

    :cond_7
    :goto_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 p0, v11

    const/16 v11, 0x5a

    if-eq v1, v11, :cond_9

    const/16 v11, 0x10e

    if-ne v1, v11, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v11, p0

    :goto_1
    move/from16 v1, v19

    goto :goto_3

    :cond_9
    :goto_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    goto :goto_1

    :goto_3
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v19, v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->getUrlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_a
    iget-boolean v2, v4, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterSizeDuration:Z

    const-wide/16 v20, 0x0

    if-eqz v2, :cond_b

    cmp-long v2, v7, v20

    if-lez v2, :cond_b

    const-wide/16 v22, 0x400

    cmp-long v2, v7, v22

    if-gez v2, :cond_b

    return-object v18

    :cond_b
    invoke-static {v12}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v12}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-boolean v2, v4, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterSizeDuration:Z

    if-eqz v2, :cond_d

    cmp-long v2, v5, v20

    if-gtz v2, :cond_d

    return-object v18

    :cond_d
    new-instance v2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {v2}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    iput-wide v13, v2, Lcom/luck/picture/lib/entity/LocalMedia;->id:J

    iput-wide v0, v2, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    iput-object v15, v2, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iput-object v3, v2, Lcom/luck/picture/lib/entity/LocalMedia;->realPath:Ljava/lang/String;

    iput-object v10, v2, Lcom/luck/picture/lib/entity/LocalMedia;->fileName:Ljava/lang/String;

    iput-object v9, v2, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    iput-wide v5, v2, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    iget v0, v4, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    iput v0, v2, Lcom/luck/picture/lib/entity/LocalMedia;->chooseModel:I

    iput-object v12, v2, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    iput v11, v2, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    move/from16 v0, v19

    iput v0, v2, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    iput-wide v7, v2, Lcom/luck/picture/lib/entity/LocalMedia;->size:J

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/luck/picture/lib/entity/LocalMedia;->dateAddedTime:J

    return-object v2
.end method
