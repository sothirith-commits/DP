.class public final Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$vehiclePropertyListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const-string v0, "vehicleProperty"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    iget-object v1, p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->canonicalTopic:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$matchesTopic(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    iget-object p1, p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$applySeatHeatState(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$render(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
