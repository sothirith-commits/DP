.class public final Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $touchView:Landroid/view/View;

.field final synthetic $verticalAnchor:Landroid/view/View;

.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->$touchView:Landroid/view/View;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->$verticalAnchor:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$seatVentPosition(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$nextSeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v2, v0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$applySeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$dismissSeatVentPopup(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->$touchView:Landroid/view/View;

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->$verticalAnchor:Landroid/view/View;

    invoke-static {v2, v3, v4, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$showSeatVentPopup(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Landroid/view/View;Landroid/view/View;I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0, v0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$applySeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    return-object p0
.end method
