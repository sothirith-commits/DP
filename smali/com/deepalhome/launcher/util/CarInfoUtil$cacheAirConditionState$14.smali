.class public final Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$14;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $carStatus:Lcom/deepalhome/launcher/carinfo/CarStatus;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/CarStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$14;->$carStatus:Lcom/deepalhome/launcher/carinfo/CarStatus;

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

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$14;->$carStatus:Lcom/deepalhome/launcher/carinfo/CarStatus;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarStatus;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setRearDefrost(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
