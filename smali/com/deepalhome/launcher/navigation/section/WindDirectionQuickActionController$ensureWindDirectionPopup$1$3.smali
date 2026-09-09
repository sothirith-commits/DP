.class public final Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$3;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    const-string v0, "mode"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$3;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;->INSTANCE:Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;->spec(Lcom/deepalhome/launcher/navigation/WindDirectionMode;)Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacController;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacController;

    new-instance v4, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    iget-object v5, v0, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;->windMode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v4, v5}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v5, v7}, Lcom/deepalhome/launcher/hvac/HvacController;->execute$default(Lcom/deepalhome/launcher/hvac/HvacController;Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iput-object v7, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->render()V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;->windMode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/deepalhome/launcher/carinfo/AirConditionState;->Companion:Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontDefrostRaw:Ljava/lang/String;

    invoke-static {v2}, Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;->parseEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "0"

    move-object v5, v2

    goto :goto_0

    :cond_2
    move-object v5, v7

    :goto_0
    const/4 v4, 0x0

    const/16 v6, 0xd

    const/4 v3, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/deepalhome/launcher/util/CarInfoUtil;->syncOptimisticAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v7, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->frontAirEnabledForUi:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->render()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->updatePendingClearSchedule()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
