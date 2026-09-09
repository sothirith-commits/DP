.class public final Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;


# instance fields
.field public final synthetic $callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

.field public final synthetic $lock:Ljava/lang/Object;

.field public final synthetic $lrclibDone:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $lrclibLyric:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $lyricDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $primaryFailed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lyricDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lock:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lrclibDone:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$primaryFailed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p6, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lrclibLyric:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lrclibDone:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lrclibLyric:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$primaryFailed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lyricDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    return-void
.end method

.method private final onFavLoaded$com$deepalhome$launcher$music$MusicInfoUtil$innerLoadMusicInfo$1(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onCoverLoaded(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "cover"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onCoverLoaded(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "cover"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError()V
    .locals 8

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lrclibDone:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$primaryFailed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lrclibLyric:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lyricDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    monitor-enter v0

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/String;

    invoke-static {v4, p0, v1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->innerLoadMusicInfo$dispatchLyric(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v4, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->innerLoadMusicInfo$dispatchError(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_0
    iget-object v6, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lrclibDone:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lrclibLyric:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$primaryFailed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v5, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lyricDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static/range {v1 .. v7}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->access$innerLoadMusicInfo$onLrclibResult(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onFavLoaded(Z)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onFavLoaded(Z)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLyricLoaded(Ljava/lang/String;)V
    .locals 8

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "lyric"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lyricDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-static {v0, p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->innerLoadMusicInfo$dispatchLyric(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "lyric"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lyricDispatched:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$callback:Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lrclibDone:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$lrclibLyric:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$innerLoadMusicInfo$1;->$primaryFailed:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->access$innerLoadMusicInfo$onLrclibResult(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
