.class public final Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $isLeft:Z

.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$1;->$isLeft:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$1;->$isLeft:Z

    invoke-static {v0, p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$seatVentIconRes(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;ZI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
