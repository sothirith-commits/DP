.class public final Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$2;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "mode"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$2;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewLevel:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->render()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
