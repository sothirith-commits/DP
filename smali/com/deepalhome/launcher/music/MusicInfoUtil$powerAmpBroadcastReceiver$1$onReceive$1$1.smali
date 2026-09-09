.class public final Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# instance fields
.field public final synthetic $duration:J

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $lrcPath:Ljava/lang/String;

.field public final synthetic $relaxedKey:Ljava/lang/String;

.field public final synthetic $singer:Ljava/lang/String;

.field public final synthetic $title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$lrcPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$relaxedKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$singer:Ljava/lang/String;

    iput-wide p6, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$duration:J

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$lrcPath:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    const-string v0, "\n"

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "join(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/lang/String;

    const-string v0, "result"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->musicInfoCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$relaxedKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {v2}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p1, v4}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v4}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricAvailable()V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$title:Ljava/lang/String;

    const-string v1, "poweramp_local"

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->legacyLyricPayload$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    move-result-object p1

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$singer:Ljava/lang/String;

    iget-wide v2, p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$powerAmpBroadcastReceiver$1$onReceive$1$1;->$duration:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    :goto_0
    return-void
.end method
