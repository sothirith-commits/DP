.class public final Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$persistVehicleProperty$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $vehicleProperty:Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$persistVehicleProperty$2;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$persistVehicleProperty$2;->$vehicleProperty:Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

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

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$persistVehicleProperty$2;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$persistVehicleProperty$2;->$vehicleProperty:Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->value:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$normalizeRawValue(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setTrunkDoorDegree(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
