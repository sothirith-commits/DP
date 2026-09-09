.class public final Lclub/deepal/launcher3/wallpaper/WallpaperItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Companion:Lclub/deepal/launcher3/wallpaper/WallpaperItem$Companion;

.field public static final TYPE_PIC:I = 0x1

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field private final author:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "author",
            "nickname"
        }
        value = "createByNickname"
    .end annotation
.end field

.field private final avatar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "avatar"
        }
        value = "uploaderAvatar"
    .end annotation
.end field

.field private final cover:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "cover",
            "thumb",
            "preview"
        }
        value = "previewImgUrl"
    .end annotation
.end field

.field private final customFileName:Ljava/lang/String;

.field private final downloadCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "downloadCount",
            "downloads",
            "download"
        }
        value = "downloadCnt"
    .end annotation
.end field

.field private final fileSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "size",
            "bytes"
        }
        value = "fileSize"
    .end annotation
.end field

.field private final height:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "h"
        }
        value = "height"
    .end annotation
.end field

.field private final id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "wallpaperId",
            "pid",
            "wid"
        }
        value = "id"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "name",
            "title",
            "utag",
            "tag"
        }
        value = "wallpaperName"
    .end annotation
.end field

.field private final streamUrl:Ljava/lang/String;

.field private final type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "type"
        }
        value = "wallpaperType"
    .end annotation
.end field

.field private final wallpaperUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "img",
            "url",
            "img_1920_1080",
            "img_3840_2160"
        }
        value = "wallpaperUrl"
    .end annotation
.end field

.field private final width:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "w"
        }
        value = "width"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lclub/deepal/launcher3/wallpaper/WallpaperItem$Companion;-><init>(I)V

    sput-object v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->Companion:Lclub/deepal/launcher3/wallpaper/WallpaperItem$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v15, 0x1fff

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cover"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "avatar"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "author"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "wallpaperUrl"

    invoke-static {v0, p11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "customFileName"

    invoke-static {v0, p13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "streamUrl"

    invoke-static {v0, p14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->id:I

    iput-object p2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->name:Ljava/lang/String;

    iput-object p3, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->cover:Ljava/lang/String;

    iput-object p4, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->avatar:Ljava/lang/String;

    iput-object p5, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->author:Ljava/lang/String;

    iput p6, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->downloadCount:I

    iput p7, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->width:I

    iput p8, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->height:I

    iput-wide p9, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->fileSize:J

    iput-object p11, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->wallpaperUrl:Ljava/lang/String;

    iput p12, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->type:I

    iput-object p13, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->customFileName:Ljava/lang/String;

    iput-object p14, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->streamUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const-string v4, ""

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    move-object v6, v4

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v4

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move v8, v2

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move v9, v2

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v2, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const-wide/16 v10, 0x0

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    move-object v12, v4

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    move-object v14, v4

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v4, p14

    :goto_c
    move/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v2

    move-wide/from16 p9, v10

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v4

    invoke-direct/range {p0 .. p14}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lclub/deepal/launcher3/wallpaper/WallpaperItem;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lclub/deepal/launcher3/wallpaper/WallpaperItem;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->cover:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->avatar:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->author:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->downloadCount:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->width:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->height:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-wide v10, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->fileSize:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->wallpaperUrl:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->type:I

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->customFileName:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->streamUrl:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p14

    :goto_c
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-wide/from16 p9, v10

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->id:I

    return p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->wallpaperUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()I
    .locals 0

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->type:I

    return p0
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->customFileName:Ljava/lang/String;

    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->streamUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->avatar:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->author:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->downloadCount:I

    return p0
.end method

.method public final component7()I
    .locals 0

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->width:I

    return p0
.end method

.method public final component8()I
    .locals 0

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->height:I

    return p0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->fileSize:J

    return-wide v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lclub/deepal/launcher3/wallpaper/WallpaperItem;
    .locals 16

    const-string v0, "name"

    move-object/from16 v3, p2

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cover"

    move-object/from16 v4, p3

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "avatar"

    move-object/from16 v5, p4

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "author"

    move-object/from16 v6, p5

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "wallpaperUrl"

    move-object/from16 v12, p11

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "customFileName"

    move-object/from16 v14, p13

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "streamUrl"

    move-object/from16 v15, p14

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    move-object v1, v0

    move/from16 v2, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v13, p12

    invoke-direct/range {v1 .. v15}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final displayName()Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->name:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "getString(...)"

    const v2, 0x7f130495

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ","

    const-string v3, ","

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {p0, v0, v4, v3}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->id:I

    iget v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->cover:Ljava/lang/String;

    iget-object v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->cover:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->avatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->author:Ljava/lang/String;

    iget-object v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->author:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->downloadCount:I

    iget v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->downloadCount:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->width:I

    iget v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->width:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->height:I

    iget v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->height:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->fileSize:J

    iget-wide v5, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->fileSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->wallpaperUrl:Ljava/lang/String;

    iget-object v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->wallpaperUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->type:I

    iget v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->type:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->customFileName:Ljava/lang/String;

    iget-object v3, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->customFileName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->streamUrl:Ljava/lang/String;

    iget-object p1, p1, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->streamUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->author:Ljava/lang/String;

    return-object p0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->avatar:Ljava/lang/String;

    return-object p0
.end method

.method public final getCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public final getCustomFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->customFileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDownloadCount()I
    .locals 0

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->downloadCount:I

    return p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->customFileName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->customFileName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->wallpaperUrl:Ljava/lang/String;

    const/16 v0, 0x2f

    invoke-static {p0, v0, p0}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "wallpaper.jpg"

    :cond_1
    return-object p0
.end method

.method public final getFileSize()J
    .locals 2

    iget-wide v0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->fileSize:J

    return-wide v0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->height:I

    return p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->id:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getStreamUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->streamUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->type:I

    return p0
.end method

.method public final getWallpaperUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->wallpaperUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->name:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->cover:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->avatar:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->author:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->downloadCount:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->width:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->height:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->wallpaperUrl:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->type:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->customFileName:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->streamUrl:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final resolutionText()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->width:I

    if-lez v0, :cond_1

    iget v0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->height:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WallpaperItem(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->downloadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaperUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->wallpaperUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", customFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->customFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", streamUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->streamUrl:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
