.class public final Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic fetchWeather$default(Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher;DDLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 7

    if-nez p8, :cond_1

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    sget-object p6, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$fetchWeather$1;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$fetchWeather$1;

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher;->fetchWeather(DDLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchWeather"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
