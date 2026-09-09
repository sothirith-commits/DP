.class public final Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$performSecondaryAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$performSecondaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$performSecondaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->currentDisplayedWindLevel()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$performSecondaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    iget v0, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->lastNonZeroWindLevel:I

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$performSecondaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissFanSpeedPopup(Z)V

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$performSecondaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-static {v2, v0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->access$applyWindLevel(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;I)Z

    move-result v2

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$performSecondaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissFanSpeedPopup(Z)V

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
