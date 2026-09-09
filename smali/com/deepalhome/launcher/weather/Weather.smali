.class public final Lcom/deepalhome/launcher/weather/Weather;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final city:Ljava/lang/String;

.field private final forecasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/weather/Forecast;",
            ">;"
        }
    .end annotation
.end field

.field private final live:Lcom/deepalhome/launcher/weather/Live;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/weather/Forecast;",
            ">;",
            "Lcom/deepalhome/launcher/weather/Live;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "forecasts"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "live"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/Weather;->forecasts:Ljava/util/List;

    iput-object p2, p0, Lcom/deepalhome/launcher/weather/Weather;->live:Lcom/deepalhome/launcher/weather/Live;

    iput-object p3, p0, Lcom/deepalhome/launcher/weather/Weather;->city:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/weather/Weather;-><init>(Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/weather/Weather;Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/weather/Weather;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/weather/Weather;->forecasts:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/weather/Weather;->live:Lcom/deepalhome/launcher/weather/Live;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/deepalhome/launcher/weather/Weather;->city:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/weather/Weather;->copy(Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;)Lcom/deepalhome/launcher/weather/Weather;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/weather/Forecast;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Weather;->forecasts:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Lcom/deepalhome/launcher/weather/Live;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Weather;->live:Lcom/deepalhome/launcher/weather/Live;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Weather;->city:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;)Lcom/deepalhome/launcher/weather/Weather;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/weather/Forecast;",
            ">;",
            "Lcom/deepalhome/launcher/weather/Live;",
            "Ljava/lang/String;",
            ")",
            "Lcom/deepalhome/launcher/weather/Weather;"
        }
    .end annotation

    const-string p0, "forecasts"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "live"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/weather/Weather;

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/weather/Weather;-><init>(Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/weather/Weather;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/weather/Weather;

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/Weather;->forecasts:Ljava/util/List;

    iget-object v3, p1, Lcom/deepalhome/launcher/weather/Weather;->forecasts:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/weather/Weather;->live:Lcom/deepalhome/launcher/weather/Live;

    iget-object v3, p1, Lcom/deepalhome/launcher/weather/Weather;->live:Lcom/deepalhome/launcher/weather/Live;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Weather;->city:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/weather/Weather;->city:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Weather;->city:Ljava/lang/String;

    return-object p0
.end method

.method public final getForecasts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/weather/Forecast;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Weather;->forecasts:Ljava/util/List;

    return-object p0
.end method

.method public final getLive()Lcom/deepalhome/launcher/weather/Live;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Weather;->live:Lcom/deepalhome/launcher/weather/Live;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/weather/Weather;->forecasts:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/Weather;->live:Lcom/deepalhome/launcher/weather/Live;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/weather/Live;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Weather;->city:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Weather(forecasts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/Weather;->forecasts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", live="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/Weather;->live:Lcom/deepalhome/launcher/weather/Live;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Weather;->city:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
