.class final Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private final extractError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    const-string p1, "status"

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_1

    :goto_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_1
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p0

    :goto_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final fetchDaily(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/weather/Weather;
    .locals 11

    const-string v0, "HTTP "

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "https://api.seniverse.com/v3/weather/daily.json"

    invoke-static {v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "language"

    const-string p2, "zh-Hans"

    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "unit"

    const-string p2, "c"

    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "start"

    const-string p2, "0"

    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "days"

    const-string p2, "3"

    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    iput-object p1, p2, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->get()V

    const-string p1, "User-Agent"

    const-string v1, "DeepalHome"

    invoke-virtual {p2, p1, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/internal/connection/RealCall;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->execute()Lokhttp3/Response;

    move-result-object p1

    :try_start_0
    iget-object p2, p1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->extractError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p1, Lokhttp3/Response;->code:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->gson:Lcom/google/gson/Gson;

    const-class v0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDailyResult;

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDailyResult;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDailyResult;->getResults()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDailyWrapper;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDailyWrapper;->getDaily()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(ILjava/util/Collection;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v2, :cond_8

    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;

    new-instance v10, Lcom/deepalhome/launcher/weather/Cast;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;->getHigh()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v5, v3

    goto :goto_2

    :cond_3
    move-object v5, v4

    :goto_2
    invoke-virtual {v2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;->getTextDay()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v6, v3

    goto :goto_3

    :cond_4
    move-object v6, v4

    :goto_3
    invoke-virtual {v2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;->getLow()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v7, v3

    goto :goto_4

    :cond_5
    move-object v7, v4

    :goto_4
    invoke-virtual {v2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;->getTextNight()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v8, v3

    goto :goto_5

    :cond_6
    move-object v8, v4

    :goto_5
    invoke-virtual {v2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;->getDate()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move-object v9, v3

    goto :goto_6

    :cond_7
    move-object v9, v2

    :goto_6
    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/deepalhome/launcher/weather/Cast;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDailyWrapper;->getDaily()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;

    if-eqz p2, :cond_d

    new-instance v2, Lcom/deepalhome/launcher/weather/Live;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;->getHigh()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;->getLow()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move-object v4, v3

    :cond_9
    invoke-virtual {p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;->getTextDay()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    invoke-virtual {p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDaily;->getTextNight()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_7

    :cond_a
    move-object v3, p2

    goto :goto_7

    :cond_b
    move-object v3, v5

    :goto_7
    invoke-direct {v2, v4, v3}, Lcom/deepalhome/launcher/weather/Live;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/deepalhome/launcher/weather/Weather;

    new-instance v3, Lcom/deepalhome/launcher/weather/Forecast;

    invoke-direct {v3, v0}, Lcom/deepalhome/launcher/weather/Forecast;-><init>(Ljava/util/List;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseDailyWrapper;->getLocation()Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_c
    move-object p0, v1

    :goto_8
    invoke-direct {p2, v0, v2, p0}, Lcom/deepalhome/launcher/weather/Weather;-><init>(Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :cond_d
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Weather data not found"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "City not found"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_f
    :goto_9
    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :goto_a
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final fetchNow(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/weather/Weather;
    .locals 13

    const-string v0, "HTTP "

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "https://api.seniverse.com/v3/weather/now.json"

    invoke-static {v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "language"

    const-string p2, "zh-Hans"

    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "unit"

    const-string p2, "c"

    invoke-virtual {v1, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    iput-object p1, p2, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->get()V

    const-string p1, "User-Agent"

    const-string v1, "DeepalHome"

    invoke-virtual {p2, p1, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/internal/connection/RealCall;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->execute()Lokhttp3/Response;

    move-result-object p1

    :try_start_0
    iget-object p2, p1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->extractError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p1, Lokhttp3/Response;->code:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->gson:Lcom/google/gson/Gson;

    const-class v0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowResult;

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowResult;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowResult;->getResults()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->getNow()Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;

    move-result-object p2

    if-eqz p2, :cond_a

    new-instance v0, Lcom/deepalhome/launcher/weather/Live;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;->getTemperature()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-nez v2, :cond_3

    move-object v2, v3

    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;->getText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v4, v3

    :cond_4
    invoke-direct {v0, v2, v4}, Lcom/deepalhome/launcher/weather/Live;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/weather/Cast;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;->getTemperature()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v6, v3

    goto :goto_1

    :cond_5
    move-object v6, v4

    :goto_1
    invoke-virtual {p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;->getText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v7, v3

    goto :goto_2

    :cond_6
    move-object v7, v4

    :goto_2
    invoke-virtual {p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;->getTemperature()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move-object v8, v3

    goto :goto_3

    :cond_7
    move-object v8, v4

    :goto_3
    invoke-virtual {p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;->getText()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    move-object v9, v3

    goto :goto_4

    :cond_8
    move-object v9, p2

    :goto_4
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/deepalhome/launcher/weather/Cast;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p2, Lcom/deepalhome/launcher/weather/Weather;

    new-instance v3, Lcom/deepalhome/launcher/weather/Forecast;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/deepalhome/launcher/weather/Forecast;-><init>(Ljava/util/List;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->getLocation()Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_9
    move-object p0, v1

    :goto_5
    invoke-direct {p2, v2, v0, p0}, Lcom/deepalhome/launcher/weather/Weather;-><init>(Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :cond_a
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Weather data not found"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "City not found"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    :goto_6
    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :goto_7
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final mergeWeather(Lcom/deepalhome/launcher/weather/Weather;Lcom/deepalhome/launcher/weather/Weather;)Lcom/deepalhome/launcher/weather/Weather;
    .locals 6

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lcom/deepalhome/launcher/weather/Weather;->getForecasts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/weather/Weather;->getCity()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lcom/deepalhome/launcher/weather/Weather;->getCity()Ljava/lang/String;

    move-result-object p0

    :cond_2
    move-object v3, p0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/weather/Weather;->copy$default(Lcom/deepalhome/launcher/weather/Weather;Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/weather/Weather;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fetchWeather(DDLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "WeatherUtil"

    const-string v1, "Fetch daily weather failed: "

    const-string v2, "Fetch now weather failed: "

    const-string v3, "onSuccess"

    invoke-static {v3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "onError"

    invoke-static {v3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    const-string v3, "SCs0CsHoTTRgLBCxL"

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.6f:%.6f"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->fetchNow(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/weather/Weather;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_2
    sget p3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    instance-of p3, p2, Lkotlin/Result$Failure;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    move-object p2, p4

    :cond_1
    check-cast p2, Lcom/deepalhome/launcher/weather/Weather;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct {p0, v3, p1}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->fetchDaily(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/weather/Weather;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    sget p3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    instance-of p3, p1, Lkotlin/Result$Failure;

    if-eqz p3, :cond_3

    move-object p1, p4

    :cond_3
    check-cast p1, Lcom/deepalhome/launcher/weather/Weather;

    invoke-direct {p0, p2, p1}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;->mergeWeather(Lcom/deepalhome/launcher/weather/Weather;Lcom/deepalhome/launcher/weather/Weather;)Lcom/deepalhome/launcher/weather/Weather;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    if-eqz p4, :cond_5

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Weather data not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SENIVERSE_API_KEY is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Fetch weather failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p6, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method
