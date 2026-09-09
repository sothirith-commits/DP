.class public final Lcom/deepalhome/launcher/weather/Forecast;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final casts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/weather/Cast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/weather/Cast;",
            ">;)V"
        }
    .end annotation

    const-string v0, "casts"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/Forecast;->casts:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/weather/Forecast;Ljava/util/List;ILjava/lang/Object;)Lcom/deepalhome/launcher/weather/Forecast;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/weather/Forecast;->casts:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/weather/Forecast;->copy(Ljava/util/List;)Lcom/deepalhome/launcher/weather/Forecast;

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
            "Lcom/deepalhome/launcher/weather/Cast;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Forecast;->casts:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/util/List;)Lcom/deepalhome/launcher/weather/Forecast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/weather/Cast;",
            ">;)",
            "Lcom/deepalhome/launcher/weather/Forecast;"
        }
    .end annotation

    const-string p0, "casts"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/weather/Forecast;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/weather/Forecast;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/weather/Forecast;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/weather/Forecast;

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Forecast;->casts:Ljava/util/List;

    iget-object p1, p1, Lcom/deepalhome/launcher/weather/Forecast;->casts:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCasts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/weather/Cast;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Forecast;->casts:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Forecast;->casts:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Forecast(casts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/Forecast;->casts:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
