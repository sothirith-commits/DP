.class public final Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/deepalhome/launcher/carinfo/AirConditionState;

    const-string v0, "state"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;->resolve(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->Companion:Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;->resolveFrontAirConditionEnabledForUi(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object v2, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->committedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-eq v1, v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iget-boolean v6, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->frontAirEnabledForUi:Z

    if-eq p1, v6, :cond_2

    move v3, v4

    :cond_2
    if-nez v5, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iput-object v1, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->committedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    iput-boolean p1, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->frontAirEnabledForUi:Z

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    :cond_4
    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->render()V

    :goto_2
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->updatePendingClearSchedule()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
