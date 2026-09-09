.class public final Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $carStatus:Lcom/deepalhome/launcher/carinfo/CarStatus;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/CarStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$4;->$carStatus:Lcom/deepalhome/launcher/carinfo/CarStatus;

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

    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$4;->$carStatus:Lcom/deepalhome/launcher/carinfo/CarStatus;

    check-cast p0, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearRight;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setTirePressureRearRight(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
