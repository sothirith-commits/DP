.class public final Lcom/deepalhome/launcher/util/CarInfoUtil$syncS05AirConditionState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $airRecycleModeRaw:Ljava/lang/String;

.field final synthetic $rearDefrostRaw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$syncS05AirConditionState$1;->$rearDefrostRaw:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$syncS05AirConditionState$1;->$airRecycleModeRaw:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$syncS05AirConditionState$1;->$rearDefrostRaw:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setRearDefrost(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$syncS05AirConditionState$1;->$airRecycleModeRaw:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setAirRecycleMode(Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
