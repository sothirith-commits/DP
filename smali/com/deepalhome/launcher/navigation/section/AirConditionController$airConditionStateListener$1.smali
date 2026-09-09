.class public final Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/carinfo/AirConditionState;

    const-string v0, "state"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$syncLastKnownAirConditionEnabled(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$syncCommittedMode(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$confirmPendingAirConditionEnabled(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$clearConfirmedPendingTemperature(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$confirmPendingMode(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$updatePendingClearSchedule(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$applyAirConditionState(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
