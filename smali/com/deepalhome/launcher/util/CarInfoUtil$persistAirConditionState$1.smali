.class public final Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $state:Lcom/deepalhome/launcher/carinfo/AirConditionState;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    const-string v0, "$this$updateCarInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->temperatureLeft:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setTemperatureLeft(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->temperatureRight:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setTemperatureRight(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->statusRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setAcStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontStatusRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setAcStatusFront(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->rearStatusRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setAcStatusRear(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontWindLevelRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setWindLevelFront(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontWindModeRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setWindModeFront(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontAirModeRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setFrontAirMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontAutoModeRaw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setFrontAutoMode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;->$state:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontDefrostRaw:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setFrontDefrost(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
