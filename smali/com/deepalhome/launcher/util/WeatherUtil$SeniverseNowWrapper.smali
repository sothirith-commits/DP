.class final Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

.field private final now:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;-><init>(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->now:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;-><init>(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;ILjava/lang/Object;)Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->now:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->copy(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;)Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    return-object p0
.end method

.method public final component2()Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->now:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;

    return-object p0
.end method

.method public final copy(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;)Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;-><init>(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    iget-object v3, p1, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->now:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;

    iget-object p1, p1, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->now:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLocation()Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    return-object p0
.end method

.method public final getNow()Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->now:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->now:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeniverseNowWrapper(location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNowWrapper;->now:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseNow;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
