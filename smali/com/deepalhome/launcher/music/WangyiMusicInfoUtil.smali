.class public final Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;

.field public static final httpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;->httpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$loadLyric(Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;Ljava/lang/String;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v0, "https://music.163.com/api/song/media?id="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lokhttp3/internal/connection/RealCall;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    new-instance p0, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;

    const/4 p1, 0x3

    invoke-direct {p0, p2, p1}, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;-><init>(Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;I)V

    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
