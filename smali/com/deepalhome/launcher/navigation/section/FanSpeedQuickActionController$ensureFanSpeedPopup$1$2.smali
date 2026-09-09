.class public final Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$2;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$2;->this$0:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->previewWindLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->previewWindLevel:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->render()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
