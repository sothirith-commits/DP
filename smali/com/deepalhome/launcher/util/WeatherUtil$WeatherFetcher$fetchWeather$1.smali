.class final Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$fetchWeather$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$DefaultImpls;->fetchWeather$default(Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher;DDLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$fetchWeather$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$fetchWeather$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$fetchWeather$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$fetchWeather$1;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$fetchWeather$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher$fetchWeather$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "it"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
