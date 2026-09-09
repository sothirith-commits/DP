.class public final Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic $callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

.field public final synthetic $isNeedCover:Z

.field public final synthetic $isNeedLyric:Z

.field public final synthetic $music:Lcom/deepalhome/launcher/music/Music;

.field public final synthetic $requestProfile:Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionSpec$Builder;Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Lcom/deepalhome/launcher/music/Music;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$requestProfile:Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$music:Lcom/deepalhome/launcher/music/Music;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$isNeedLyric:Z

    iput-boolean p5, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$isNeedCover:Z

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 0

    const-string p2, "call"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    return-void
.end method

.method public final onResponse(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$requestProfile:Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    iget-object v2, v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$music:Lcom/deepalhome/launcher/music/Music;

    iget-object v3, v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v5, p2

    iget-object v5, v5, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, ""

    :cond_1
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "info"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_7

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "songname_original"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "singername"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "duration"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v16, v10, v12

    sget-object v10, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v8}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isTitleMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v9}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isSingerMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v14

    const-wide/16 v18, 0xbb8

    invoke-static/range {v14 .. v19}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isDurationMatch(JJJ)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v1, "hash"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v4, v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$isNeedLyric:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;

    invoke-static {v4, v2, v1, v3}, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;->access$loadLyric(Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    :cond_3
    iget-boolean v0, v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadMusicInfo$1;->$isNeedCover:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;

    invoke-static {v0, v1, v3}, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;->access$loadCover(Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;Ljava/lang/String;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    invoke-interface {v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    return-void

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    invoke-interface {v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    invoke-interface {v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    :goto_2
    return-void
.end method
