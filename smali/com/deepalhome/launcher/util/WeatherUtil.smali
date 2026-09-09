.class public final Lcom/deepalhome/launcher/util/WeatherUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

.field public static final cacheTtlMs:J

.field public static final weatherCache:Ljava/util/concurrent/ConcurrentHashMap;

.field public static volatile weatherFetcher:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher;

.field public static final weatherUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/util/WeatherUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/WeatherUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/WeatherUtil;->weatherCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/WeatherUtil;->weatherUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/deepalhome/launcher/util/WeatherUtil;->cacheTtlMs:J

    new-instance v0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseFetcher;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/WeatherUtil;->weatherFetcher:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheKey(DD)Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.4f,%.4f"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIcon(Ljava/lang/String;)I
    .locals 3

    const-string v0, "weather"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7f100033

    const v2, 0x7f100034

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "Light Snow - Moderate Snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v1, 0x7f10003e

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "Light Rain - Moderate Rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_1

    :cond_1
    const v1, 0x7f100047

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "Rain and Snow Weather"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "Showers with Snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "Extremely Heavy Fog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_1

    :cond_2
    const v1, 0x7f10005c

    goto/16 :goto_2

    :sswitch_5
    const-string v0, "Extremely Heavy Rainstorm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "Tropical Storm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "Extreme Rainfall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_1

    :cond_3
    const v1, 0x7f10005e

    goto/16 :goto_2

    :sswitch_8
    const-string v0, "Clear to Partly Cloudy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/deepalhome/launcher/util/WeatherUtil;->isNight()Z

    move-result p0

    if-eqz p0, :cond_5

    const v1, 0x7f100032

    goto/16 :goto_2

    :cond_5
    const v1, 0x7f100031

    goto/16 :goto_2

    :sswitch_9
    const-string v0, "Heavy Thunder Shower"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_1

    :cond_6
    const v1, 0x7f100059

    goto/16 :goto_2

    :sswitch_a
    const-string v0, "Heavy Snow - Snowstorm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "Heavy Rain - Rainstorm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_1

    :cond_7
    const v1, 0x7f100054

    goto/16 :goto_2

    :sswitch_c
    const-string v0, "Severe Dust Storm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "Tornado"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_1

    :cond_8
    const v1, 0x7f100037

    goto/16 :goto_2

    :sswitch_e
    const-string v0, "Thunder Shower"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_1

    :cond_9
    const v1, 0x7f100043

    goto/16 :goto_2

    :sswitch_f
    const-string v0, "Rain with Snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_1

    :cond_a
    const v1, 0x7f10004f

    goto/16 :goto_2

    :sswitch_10
    const-string v0, "Heavy Haze"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_1

    :cond_b
    const v1, 0x7f100051

    goto/16 :goto_2

    :sswitch_11
    const-string v0, "Hurricane"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "Dust Storm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "Drizzle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "Heavy Shower"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_1

    :cond_c
    const v1, 0x7f100058

    goto/16 :goto_2

    :sswitch_15
    const-string v0, "Heavy Fog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_1

    :cond_d
    const v1, 0x7f100056

    goto/16 :goto_2

    :sswitch_16
    const-string v0, "Heavy Rainstorm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "Severe Haze"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "Moderate Haze"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_1

    :cond_e
    const v1, 0x7f100046

    goto/16 :goto_2

    :sswitch_19
    const-string v0, "Gale"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "Storm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_1

    :cond_f
    const v1, 0x7f10005d

    goto/16 :goto_2

    :sswitch_1b
    const-string v0, "Snow Shower"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_1

    :cond_10
    const v1, 0x7f10003c

    goto/16 :goto_2

    :sswitch_1c
    const-string v0, "Rain Shower"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_1

    :cond_11
    const v1, 0x7f10003b

    goto/16 :goto_2

    :sswitch_1d
    const-string v0, "Light Fog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_1

    :cond_12
    const v1, 0x7f10003d

    goto/16 :goto_2

    :sswitch_1e
    const-string v0, "Mist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_1

    :cond_13
    const v1, 0x7f10004d

    goto/16 :goto_2

    :sswitch_1f
    const-string v0, "Strong Wind"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "Scorching Wind"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "Breeze"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "Fog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_1

    :cond_14
    const v1, 0x7f100050

    goto/16 :goto_2

    :sswitch_23
    const-string v0, "Floating Dust"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "Windy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "Snowstorm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_1

    :cond_15
    const v1, 0x7f10005b

    goto/16 :goto_2

    :sswitch_26
    const-string v0, "Rainstorm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_1

    :cond_16
    const v1, 0x7f10005a

    goto/16 :goto_2

    :sswitch_27
    const-string v0, "Drifting Sand"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_1

    :cond_17
    const v1, 0x7f100057

    goto/16 :goto_2

    :sswitch_28
    const-string v0, "Light Air"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "Calm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "Light Snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_1

    :cond_18
    const v1, 0x7f100040

    goto/16 :goto_2

    :sswitch_2b
    const-string v0, "Light Rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_1

    :cond_19
    const v1, 0x7f10003f

    goto/16 :goto_2

    :sswitch_2c
    const-string v0, "Partly Cloudy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_1

    :cond_1a
    invoke-static {}, Lcom/deepalhome/launcher/util/WeatherUtil;->isNight()Z

    move-result p0

    if-eqz p0, :cond_1b

    const v1, 0x7f10004b

    goto/16 :goto_2

    :cond_1b
    const v1, 0x7f10004a

    goto/16 :goto_2

    :sswitch_2d
    const-string v0, "Gale Force"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "Heavy Mist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const v1, 0x7f100045

    goto/16 :goto_2

    :sswitch_2f
    const-string v0, "Heavy Snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const v1, 0x7f100053

    goto/16 :goto_2

    :sswitch_30
    const-string v0, "Heavy Rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const v1, 0x7f100052

    goto/16 :goto_2

    :sswitch_31
    const-string v0, "Cloudy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const v1, 0x7f100035

    goto/16 :goto_2

    :sswitch_32
    const-string v0, "Moderate Wind"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_1

    :cond_20
    invoke-static {}, Lcom/deepalhome/launcher/util/WeatherUtil;->isNight()Z

    move-result p0

    if-eqz p0, :cond_21

    const v1, 0x7f100042

    goto/16 :goto_2

    :cond_21
    const v1, 0x7f100041

    goto/16 :goto_2

    :sswitch_33
    const-string v0, "Freezing Rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_1

    :cond_22
    const v1, 0x7f100039

    goto/16 :goto_2

    :sswitch_34
    const-string v0, "Moderate Snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_1

    :cond_23
    const v1, 0x7f100048

    goto/16 :goto_2

    :sswitch_35
    const-string v0, "Moderate Rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_1

    :sswitch_36
    const-string v0, "Haze"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_1

    :cond_24
    const v1, 0x7f10003a

    goto/16 :goto_2

    :sswitch_37
    const-string v0, "Mist/Fog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_1

    :cond_25
    const v1, 0x7f100038

    goto/16 :goto_2

    :sswitch_38
    const-string v0, "Snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_1

    :cond_26
    const v1, 0x7f10004e

    goto/16 :goto_2

    :sswitch_39
    const-string v0, "Rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_1

    :cond_27
    const v1, 0x7f10004c

    goto/16 :goto_2

    :sswitch_3a
    const-string v0, "Overcast"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_1

    :cond_28
    const v1, 0x7f100036

    goto/16 :goto_2

    :sswitch_3b
    const-string v0, "Clear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_1

    :cond_29
    invoke-static {}, Lcom/deepalhome/launcher/util/WeatherUtil;->isNight()Z

    move-result p0

    if-eqz p0, :cond_30

    :goto_0
    move v1, v2

    goto :goto_2

    :sswitch_3c
    const-string v0, "Thunder Shower with Hail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_1

    :cond_2a
    const v1, 0x7f100044

    goto :goto_2

    :sswitch_3d
    const-string v0, "Heavy Rainstorm - Extremely Heavy Rainstorm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_1

    :cond_2b
    const v1, 0x7f100061

    goto :goto_2

    :sswitch_3e
    const-string v0, "Moderate Snow - Heavy Snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_1

    :cond_2c
    const v1, 0x7f100049

    goto :goto_2

    :sswitch_3f
    const-string v0, "Moderate Rain - Heavy Rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_1

    :cond_2d
    const v1, 0x7f10005f

    goto :goto_2

    :sswitch_40
    const-string v0, "Rainstorm - Heavy Rainstorm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_1

    :cond_2e
    const v1, 0x7f100060

    goto :goto_2

    :sswitch_41
    const-string v0, "Strong Wind/Gale"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    :goto_1
    invoke-static {}, Lcom/deepalhome/launcher/util/WeatherUtil;->isNight()Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_0

    :cond_2f
    const v1, 0x7f100055

    :cond_30
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7c947489 -> :sswitch_41
        -0x6e8d4c7e -> :sswitch_40
        -0x6db764ad -> :sswitch_3f
        -0x6db67bed -> :sswitch_3e
        -0x3bea768c -> :sswitch_3d
        -0x1f90ca76 -> :sswitch_3c
        0x6674 -> :sswitch_3b
        0x9634 -> :sswitch_3a
        0x96e8 -> :sswitch_39
        0x96ea -> :sswitch_38
        0x96fe -> :sswitch_37
        0x973e -> :sswitch_36
        0xa0e5b -> :sswitch_35
        0xa0e5d -> :sswitch_34
        0xa7c8d -> :sswitch_33
        0xad5c2 -> :sswitch_32
        0xb18b7 -> :sswitch_31
        0xb62a1 -> :sswitch_30
        0xb62a3 -> :sswitch_2f
        0xb62b7 -> :sswitch_2e
        0xb6487 -> :sswitch_2d
        0xb74a0 -> :sswitch_2c
        0xbbcb9 -> :sswitch_2b
        0xbbcbb -> :sswitch_2a
        0xc0746 -> :sswitch_29
        0xc2ee0 -> :sswitch_28
        0xc57ad -> :sswitch_27
        0xd06b4 -> :sswitch_26
        0xd06b6 -> :sswitch_25
        0xd12e5 -> :sswitch_24
        0xd9c6a -> :sswitch_23
        0xdd40b -> :sswitch_22
        0xdeb69 -> :sswitch_21
        0xe4106 -> :sswitch_20
        0xedad0 -> :sswitch_1f
        0xff0e2 -> :sswitch_1e
        0x11f6e3 -> :sswitch_1d
        0x12c753 -> :sswitch_1c
        0x12c755 -> :sswitch_1b
        0x12e7a6 -> :sswitch_1a
        0x131a5b -> :sswitch_19
        0x1318445 -> :sswitch_18
        0x13797f6 -> :sswitch_17
        0x15bb21b -> :sswitch_16
        0x1734cc5 -> :sswitch_15
        0x178400d -> :sswitch_14
        0x1a28788 -> :sswitch_13
        0x1a337f5 -> :sswitch_12
        0x1bd31ca -> :sswitch_11
        0x22f5fe5 -> :sswitch_10
        0x241e1b9 -> :sswitch_f
        0x2497c8a -> :sswitch_e
        0x261d190 -> :sswitch_d
        0x2cecd67b -> :sswitch_c
        0x2cf83d60 -> :sswitch_b
        0x2cf92620 -> :sswitch_a
        0x2d931b10 -> :sswitch_9
        0x30d096b7 -> :sswitch_8
        0x30ed2249 -> :sswitch_7
        0x34c9a03f -> :sswitch_6
        0x35650102 -> :sswitch_5
        0x357c9bac -> :sswitch_4
        0x4689a364 -> :sswitch_3
        0x46dadc8d -> :sswitch_2
        0x55e993ef -> :sswitch_1
        0x55ea7caf -> :sswitch_0
    .end sparse-switch
.end method

.method public static hasCompleteForecast(Lcom/deepalhome/launcher/weather/Weather;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/Weather;->getForecasts()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/weather/Forecast;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/Forecast;->getCasts()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isNight()Z
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static updateWeatherByCoordinate(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZLcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V
    .locals 10

    const-string v0, "coordinate"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;->longitude:D

    iget-wide v6, p0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;->latitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/deepalhome/launcher/util/WeatherUtil;->cacheKey(DD)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p0, Lcom/deepalhome/launcher/util/WeatherUtil;->weatherCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v0, v8

    sget-wide v8, Lcom/deepalhome/launcher/util/WeatherUtil;->cacheTtlMs:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    new-instance p1, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;

    const/4 p3, 0x1

    invoke-direct {p1, p3, p2, p0}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/4 p0, -0x2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;

    move-object v1, p1

    move-object v3, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/deepalhome/launcher/util/WeatherUtil$Callback;DDLcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public static synthetic updateWeatherByCoordinate$default(Lcom/deepalhome/launcher/util/WeatherUtil;Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZLcom/deepalhome/launcher/util/WeatherUtil$Callback;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, p2, p3, p0}, Lcom/deepalhome/launcher/util/WeatherUtil;->updateWeatherByCoordinate(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZLcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V

    return-void
.end method