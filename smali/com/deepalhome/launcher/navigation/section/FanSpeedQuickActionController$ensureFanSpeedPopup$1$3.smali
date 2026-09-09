.class public final Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$3;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$3;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->access$applyWindLevel(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;I)Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$3;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissFanSpeedPopup(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
