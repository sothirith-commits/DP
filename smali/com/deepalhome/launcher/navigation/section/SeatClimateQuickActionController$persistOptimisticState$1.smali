.class public final Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $level:I

.field final synthetic $mode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;I)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$mode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput p3, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$level:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    const-string v0, "$this$updateCarInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$mode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    sget-object v2, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->HEAT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatHeatingFrontLeft(Ljava/lang/String;)V

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$level:I

    if-lez p0, :cond_3

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatVentilationFrontLeft(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$mode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    sget-object v2, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->VENT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatVentilationFrontLeft(Ljava/lang/String;)V

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$level:I

    if-lez p0, :cond_3

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatHeatingFrontLeft(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$mode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    sget-object v2, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->HEAT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatHeatingFrontRight(Ljava/lang/String;)V

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$level:I

    if-lez p0, :cond_3

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatVentilationFrontRight(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatVentilationFrontRight(Ljava/lang/String;)V

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;->$level:I

    if-lez p0, :cond_3

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatHeatingFrontRight(Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
