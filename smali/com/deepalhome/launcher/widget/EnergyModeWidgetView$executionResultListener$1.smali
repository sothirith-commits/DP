.class public final Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;

    const-string v0, "sceneName"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "result"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Pure EV mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricAvailable:Z

    iput-boolean p2, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricSelected:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    iput-boolean p2, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricAvailable:Z

    iput-boolean p2, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricSelected:Z

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$executionResultListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->pendingActionIndex:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->refreshModeStates$2()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
