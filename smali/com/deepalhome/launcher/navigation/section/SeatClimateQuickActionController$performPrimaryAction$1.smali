.class public final Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$performPrimaryAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->currentDisplayMode()Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    move-result-object v1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->currentDisplayMode()Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->access$nextLevel(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->access$applyModeLevel(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
