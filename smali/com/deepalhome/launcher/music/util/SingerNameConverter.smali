.class public final Lcom/deepalhome/launcher/music/util/SingerNameConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/music/util/SingerNameConverter$Companion;

.field public static instance:Lcom/deepalhome/launcher/music/util/SingerNameConverter;


# instance fields
.field public englishToChineseMap:Ljava/util/Map;

.field public isFetching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/util/SingerNameConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/util/SingerNameConverter$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->Companion:Lcom/deepalhome/launcher/music/util/SingerNameConverter$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Lkotlin/collections/EmptyMap;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->englishToChineseMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->fetchDataFromNetwork()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/util/SingerNameConverter;-><init>()V

    return-void
.end method

.method public static final access$parseJsonToMap(Lcom/deepalhome/launcher/music/util/SingerNameConverter;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/music/util/SingerNameConverter$parseJsonToMap$listType$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/util/SingerNameConverter$parseJsonToMap$listType$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "fromJson(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final fetchDataFromNetwork()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/util/SingerNameConverter;->isFetching:Z

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "https://gitee.com/sunx1205/singer/raw/master/singer.json"

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v2, Lokhttp3/internal/connection/RealCall;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    new-instance v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
