.class final Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $cacheKey:Ljava/lang/String;

.field final synthetic $callback:Lcom/deepalhome/launcher/util/WeatherUtil$Callback;

.field final synthetic $excludedUpdateListener:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;

.field final synthetic $latitude:D

.field final synthetic $longitude:D


# direct methods
.method public static synthetic $r8$lambda$Xl3vrKM7KJw5KkM9QOHAbl3oYmA(Lcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/weather/Weather;DDLcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->invoke$lambda$0(Lcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/weather/Weather;DDLcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/deepalhome/launcher/util/WeatherUtil$Callback;DDLcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$cacheKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$callback:Lcom/deepalhome/launcher/util/WeatherUtil$Callback;

    iput-wide p3, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$longitude:D

    iput-wide p5, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$latitude:D

    iput-object p7, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$excludedUpdateListener:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/weather/Weather;DDLcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V
    .locals 7

    const-string v0, "$callback"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$weatherToCache"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/util/WeatherUtil$Callback;->onLoaded(Lcom/deepalhome/launcher/weather/Weather;)V

    sget-object p0, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/WeatherUtil;->weatherUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;

    invoke-static {v1, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;->onWeatherUpdated(DDLcom/deepalhome/launcher/weather/Weather;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/weather/Weather;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->invoke(Lcom/deepalhome/launcher/weather/Weather;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/deepalhome/launcher/weather/Weather;)V
    .locals 8

    const-string v0, "weather"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$cacheKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/WeatherUtil;->hasCompleteForecast(Lcom/deepalhome/launcher/weather/Weather;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/util/WeatherUtil;->weatherCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->getWeather()Lcom/deepalhome/launcher/weather/Weather;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/deepalhome/launcher/util/WeatherUtil;->hasCompleteForecast(Lcom/deepalhome/launcher/weather/Weather;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/deepalhome/launcher/weather/Weather;->getForecasts()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/weather/Weather;->copy$default(Lcom/deepalhome/launcher/weather/Weather;Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/weather/Weather;

    move-result-object p1

    goto :goto_0

    :goto_1
    sget-object p1, Lcom/deepalhome/launcher/util/WeatherUtil;->weatherCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$cacheKey:Ljava/lang/String;

    new-instance v1, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;-><init>(Lcom/deepalhome/launcher/weather/Weather;J)V

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$callback:Lcom/deepalhome/launcher/util/WeatherUtil$Callback;

    iget-wide v3, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$longitude:D

    iget-wide v5, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$latitude:D

    iget-object v7, p0, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$excludedUpdateListener:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;

    new-instance p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/weather/Weather;DDLcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
