.class public final Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$2;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    const-string v0, "mode"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$2;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->render()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
