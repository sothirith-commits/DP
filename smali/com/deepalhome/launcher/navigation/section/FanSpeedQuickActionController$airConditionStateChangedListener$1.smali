.class public final Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/deepalhome/launcher/carinfo/AirConditionState;

    const-string v0, "state"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getWindLevelFront()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->committedWindLevel:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2, v3}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->resolveCommittedLevel(Lcom/deepalhome/launcher/carinfo/AirConditionState;Ljava/lang/String;I)I

    move-result p1

    iget-object v2, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->pendingWindLevel:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->committedWindLevel:I

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    iput p1, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->committedWindLevel:I

    if-lez p1, :cond_3

    iput p1, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->lastNonZeroWindLevel:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->rememberNonZeroLevel(I)V

    :cond_3
    if-eqz v2, :cond_4

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->pendingWindLevel:Ljava/lang/Integer;

    :cond_4
    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->render()V

    :goto_2
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->updatePendingClearSchedule()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
