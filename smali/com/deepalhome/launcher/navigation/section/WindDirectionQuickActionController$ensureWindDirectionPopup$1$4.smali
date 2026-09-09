.class public final Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$4;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$4;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->render()V

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$4;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->updatePendingClearSchedule()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
