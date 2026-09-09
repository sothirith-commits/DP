.class public final Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$ensureSeatHeatPopup$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$ensureSeatHeatPopup$2$3;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$ensureSeatHeatPopup$2$3;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$seatHeatPosition(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$ensureSeatHeatPopup$2$3;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    invoke-static {v1, v0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$applySeatHeatLevel(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$ensureSeatHeatPopup$2$3;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$dismissSeatHeatPopup(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Z)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
