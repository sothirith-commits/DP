.class public final Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$4;
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

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$4;->$this_apply:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$4;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

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

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$4;->$this_apply:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->refreshSelection(ILcom/deepalhome/launcher/navigation/section/SeatClimateMode;Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$4;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-static {p0, p1, v1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->access$applyModeLevel(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;I)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
