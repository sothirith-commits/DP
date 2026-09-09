.class final Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final timestamp:J

.field private final weather:Lcom/deepalhome/launcher/weather/Weather;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/weather/Weather;J)V
    .locals 1

    const-string v0, "weather"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->weather:Lcom/deepalhome/launcher/weather/Weather;

    iput-wide p2, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->timestamp:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;Lcom/deepalhome/launcher/weather/Weather;JILjava/lang/Object;)Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->weather:Lcom/deepalhome/launcher/weather/Weather;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->timestamp:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->copy(Lcom/deepalhome/launcher/weather/Weather;J)Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/deepalhome/launcher/weather/Weather;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->weather:Lcom/deepalhome/launcher/weather/Weather;

    return-object p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->timestamp:J

    return-wide v0
.end method

.method public final copy(Lcom/deepalhome/launcher/weather/Weather;J)Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;
    .locals 0

    const-string p0, "weather"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;-><init>(Lcom/deepalhome/launcher/weather/Weather;J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->weather:Lcom/deepalhome/launcher/weather/Weather;

    iget-object v3, p1, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->weather:Lcom/deepalhome/launcher/weather/Weather;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->timestamp:J

    iget-wide p0, p1, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->timestamp:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->timestamp:J

    return-wide v0
.end method

.method public final getWeather()Lcom/deepalhome/launcher/weather/Weather;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->weather:Lcom/deepalhome/launcher/weather/Weather;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->weather:Lcom/deepalhome/launcher/weather/Weather;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/weather/Weather;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherCacheEntry(weather="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->weather:Lcom/deepalhome/launcher/weather/Weather;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
