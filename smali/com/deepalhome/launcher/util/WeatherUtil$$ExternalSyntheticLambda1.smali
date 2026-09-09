.class public final synthetic Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:D

.field public final synthetic f$1:D

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Lcom/deepalhome/launcher/util/WeatherUtil$Callback;

.field public final synthetic f$4:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/weather/Weather;DDLcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$3:Lcom/deepalhome/launcher/util/WeatherUtil$Callback;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$0:D

    iput-wide p5, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$1:D

    iput-object p7, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$4:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/deepalhome/launcher/util/WeatherUtil$Callback;DDLcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$0:D

    iput-wide p5, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$1:D

    iput-object p1, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$3:Lcom/deepalhome/launcher/util/WeatherUtil$Callback;

    iput-object p7, p0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$4:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-wide v6, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$1:D

    iget-object v8, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$4:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;

    iget-object v2, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$3:Lcom/deepalhome/launcher/util/WeatherUtil$Callback;

    iget-object v1, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/deepalhome/launcher/weather/Weather;

    iget-wide v4, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$0:D

    invoke-static/range {v2 .. v8}, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;->$r8$lambda$Xl3vrKM7KJw5KkM9QOHAbl3oYmA(Lcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/weather/Weather;DDLcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V

    return-void

    :pswitch_0
    iget-wide v1, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$0:D

    iget-wide v3, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$1:D

    iget-object v5, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    iget-object v11, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$3:Lcom/deepalhome/launcher/util/WeatherUtil$Callback;

    iget-object v0, v0, Lcom/deepalhome/launcher/util/WeatherUtil$$ExternalSyntheticLambda1;->f$4:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;

    const-string v5, "$cacheKey"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "$callback"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lcom/deepalhome/launcher/util/WeatherUtil;->weatherFetcher:Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher;

    new-instance v6, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;

    move-object v9, v6

    move-wide v12, v1

    move-wide v14, v3

    move-object/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$1;-><init>(Ljava/lang/String;Lcom/deepalhome/launcher/util/WeatherUtil$Callback;DDLcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V

    sget-object v15, Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$2;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil$updateWeatherByCoordinate$2$2;

    move-object v9, v5

    move-wide v10, v1

    move-wide v12, v3

    move-object v14, v6

    invoke-interface/range {v9 .. v15}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherFetcher;->fetchWeather(DDLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
