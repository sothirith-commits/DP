.class public final Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$6;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$6;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->previewWindLevel:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->previewWindLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->render()V

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$6;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->updatePendingClearSchedule()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
