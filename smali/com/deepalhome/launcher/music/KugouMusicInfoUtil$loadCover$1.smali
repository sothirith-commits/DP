.class public final Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;
.implements Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;


# instance fields
.field public final synthetic $callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverLoaded(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cover"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onCoverLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    return-void
.end method

.method public onFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 0

    iget p2, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "call"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    return-void

    :pswitch_0
    const-string p2, "call"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    return-void

    :pswitch_1
    const-string p0, "call"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFavLoaded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onFavLoaded(Z)V

    return-void
.end method

.method public onLyricLoaded(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lyric"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onLyricLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
    .locals 6

    iget p1, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "lyric"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onLyricLoaded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-interface {p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    :try_start_1
    iget-object p1, p2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onLyricLoaded(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    invoke-interface {p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    :goto_3
    return-void

    :pswitch_1
    const-string p1, "1080"

    const-string v0, "{size}"

    const-string v1, "\\"

    const-string v2, "getString(...)"

    :try_start_2
    iget-object p2, p2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v3, ""

    if-eqz p2, :cond_3

    :try_start_3
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    :cond_3
    move-object p2, v3

    :cond_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "album_img"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, v1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, p1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "imgUrl"

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, v1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    iget-object p0, p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, v4}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onCoverLoaded(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
