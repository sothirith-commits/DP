.class public final Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;

.field public static final httpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;->httpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$loadCover(Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;Ljava/lang/String;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v0, "https://m.kugou.com/app/i/getSongInfo.php?cmd=playInfo&hash="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lokhttp3/internal/connection/RealCall;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    new-instance p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;-><init>(Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;I)V

    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static final access$loadLyric(Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;Lcom/deepalhome/launcher/music/Music;Ljava/lang/String;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://m.kugou.com/app/i/krc.php?cmd=100&keyword="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&timelength="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lokhttp3/internal/connection/RealCall;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    new-instance p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;

    const/4 p1, 0x1

    invoke-direct {p0, p3, p1}, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;-><init>(Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;I)V

    invoke-virtual {p2, p0}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
