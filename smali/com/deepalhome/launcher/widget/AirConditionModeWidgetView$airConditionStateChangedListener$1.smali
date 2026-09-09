.class public final Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$airConditionStateChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/carinfo/AirConditionState;

    const-string v0, "state"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    sget v1, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;->resolve(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object p1

    iput-object p1, v0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->confirmedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$airConditionStateChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->refreshModeStates()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
