.class public final Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const-string v0, "vehicleProperty"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AC/SeatHeating/FrontLeft"

    const-string v2, "AC/SeatVentilation/FrontLeft"

    const-string v3, "AC/SeatHeating/FrontRight"

    const-string v4, "AC/SeatVentilation/FrontRight"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->canonicalTopic:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->value:Ljava/lang/String;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->parseLevel(Ljava/lang/String;)I

    move-result p1

    iget v5, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    iget v7, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    iget-object v8, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferredMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iput p1, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    if-lez p1, :cond_5

    iput v9, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    sget-object p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->HEAT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput-object p1, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferredMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    goto :goto_2

    :cond_3
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iput p1, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    if-lez p1, :cond_5

    iput v9, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    sget-object p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->VENT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput-object p1, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferredMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    :cond_5
    :goto_2
    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->clearPreview(Z)V

    iget p1, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    if-ne v5, p1, :cond_6

    iget p1, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    if-ne v7, p1, :cond_6

    iget-object p1, v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferredMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-eq v8, p1, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->render()V

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
