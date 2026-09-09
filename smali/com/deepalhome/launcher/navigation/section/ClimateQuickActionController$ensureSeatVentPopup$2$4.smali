.class public final Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$4;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$4;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$seatVentPosition(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$4;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$nextSeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$4;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v3, v0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$applySeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$4;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0, v2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$dismissSeatVentPopup(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$4;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v3}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getSeatVentPopup$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->refreshSelection(IZ)V

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$4;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0, v0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$applySeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
