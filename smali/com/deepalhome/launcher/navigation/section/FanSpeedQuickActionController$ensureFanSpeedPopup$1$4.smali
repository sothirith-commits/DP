.class public final Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$4;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$4;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissFanSpeedPopup(Z)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$4;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FAN_SPEED:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v2, p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;->access$primaryActionDebounceKey(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":popup:open_panel"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->open(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
