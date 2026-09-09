.class public final Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $this_apply:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V
    .locals 0

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$5;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$5;->$this_apply:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    const-string v0, "mode"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$5;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->access$nextLevel(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$5;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-static {v2, p1, v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->access$applyModeLevel(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;I)Z

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$5;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->dismissTransientUi(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$5;->$this_apply:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    invoke-virtual {v2, v0, p1, v1}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->refreshSelection(ILcom/deepalhome/launcher/navigation/section/SeatClimateMode;Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$5;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-static {p0, p1, v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->access$applyModeLevel(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;I)Z

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
