.class public final Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;
.implements Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public a:J

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;JI)V
    .locals 0

    iput p5, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->$r8$classId:I

    iput-object p1, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->c:Ljava/lang/Object;

    iput-object p2, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->b:Ljava/lang/String;

    iput-wide p3, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->c:Ljava/lang/Object;

    return-void
.end method

.method private final onError$com$deepalhome$launcher$music$LegacyMusicBar$applyMusicInfo$1$1()V
    .locals 0

    return-void
.end method

.method private final onError$com$deepalhome$launcher$music$MusicBar$musicChangedListener$1$onInfoChanged$1()V
    .locals 0

    return-void
.end method

.method private final onFavLoaded$com$deepalhome$launcher$music$FloatingLyricsWindow$musicChangedListener$1$onInfoChanged$1(Z)V
    .locals 0

    return-void
.end method

.method private final onFavLoaded$com$deepalhome$launcher$music$LegacyMusicBar$applyMusicInfo$1$1(Z)V
    .locals 0

    return-void
.end method

.method private final onFavLoaded$com$deepalhome$launcher$music$MusicBar$musicChangedListener$1$onInfoChanged$1(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCoverLoaded(Ljava/lang/String;)V
    .locals 9

    iget v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "cover"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    new-instance v8, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->c:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/music/MusicBar;

    iget-object v3, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->b:Ljava/lang/String;

    iget-wide v4, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->a:J

    const/4 v7, 0x3

    move-object v1, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    const-string v0, "cover"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    new-instance v8, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->c:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    iget-object v3, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->b:Ljava/lang/String;

    iget-wide v4, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->a:J

    const/4 v7, 0x0

    move-object v1, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    const-string p0, "cover"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError()V
    .locals 8

    iget v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-object v0, v2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v7, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->b:Ljava/lang/String;

    iget-wide v4, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->a:J

    const/16 v6, 0xe

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;JI)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFavLoaded(Z)V
    .locals 0

    iget p0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->$r8$classId:I

    return-void
.end method

.method public onLyricLoaded(Ljava/lang/String;)V
    .locals 0

    iget p0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "lyric"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string p0, "lyric"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onLyricPayloadLoaded(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V
    .locals 9

    iget-object v0, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-object v0, v2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v8, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->b:Ljava/lang/String;

    iget-wide v4, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->a:J

    const/4 v7, 0x1

    move-object v1, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyMusicInfo$1$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
