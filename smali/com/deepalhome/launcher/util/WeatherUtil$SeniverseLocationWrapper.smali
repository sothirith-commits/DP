.class final Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;-><init>(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;)V
    .locals 1

    const-string v0, "location"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    new-instance p1, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;-><init>(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;ILjava/lang/Object;)Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;->copy(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;)Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    return-object p0
.end method

.method public final copy(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;)Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;
    .locals 0

    const-string p0, "location"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;-><init>(Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    iget-object p1, p1, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getLocation()Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeniverseLocationWrapper(location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocationWrapper;->location:Lcom/deepalhome/launcher/util/WeatherUtil$SeniverseLocation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
