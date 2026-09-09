.class public final synthetic Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    const-string v1, "$coordinate"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;

    invoke-interface {p0, v0}, Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;->onCoordinateChanged(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "$message"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;

    invoke-interface {p0, v0}, Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;->onLocationFailed(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    const-string v1, "$coordinate"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;

    invoke-interface {p0, v0}, Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;->onLocationResult(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V

    return-void

    :pswitch_3
    const-string v0, "$changedFields"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_4
    const-string v0, "$carInfo"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_5
    const-string v0, "$carStatus"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/carinfo/CarStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_6
    const-string v0, "$vehicleProperty"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_7
    const-string v0, "$nextState"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_8
    sget-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->scheduleAutoNavi$default(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LauncherUtil;->Companion:Lcom/deepalhome/launcher/util/LauncherUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LauncherUtil$Companion;->backToHomeAndShowWindow()V

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/util/AssistantUtil$Coord;

    iget-wide v2, v1, Lcom/deepalhome/launcher/util/AssistantUtil$Coord;->lat:D

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-wide v0, v1, Lcom/deepalhome/launcher/util/AssistantUtil$Coord;->lon:D

    invoke-static {p0, v2, v3, v0, v1}, Lcom/deepalhome/launcher/map/MapController;->startNaviByCoord(Ljava/lang/String;DD)V

    return-void

    :pswitch_9
    const-string v0, "$callback"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/util/WeatherUtil$Callback;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/WeatherUtil$WeatherCacheEntry;->getWeather()Lcom/deepalhome/launcher/weather/Weather;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/deepalhome/launcher/util/WeatherUtil$Callback;->onLoaded(Lcom/deepalhome/launcher/weather/Weather;)V

    return-void

    :pswitch_a
    const-string v0, "$callback"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
