.class public final Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$performPrimaryAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getType$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$toggleAirRecycleMode(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$toggleRearDefrost(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$toggleFrontDefrost(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    sget-object v1, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_RIGHT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$cycleSeatVentilation(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    sget-object v1, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$cycleSeatVentilation(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$persistOptimisticState(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$render(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
