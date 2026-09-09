.class public final Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$7;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$7;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$clearPreviewTemperature(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$7;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$setPopupActive$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$7;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$updatePendingClearSchedule(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
