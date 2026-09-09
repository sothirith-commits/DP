.class public final Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/widget/MagiskWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/MagiskWidgetView;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1$1;->this$0:Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1$1;->$progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1$1;->this$0:Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    iput-boolean p1, v0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->isRootReady:Z

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;->applyStyle()V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1$1;->$progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v0, 0xf

    invoke-direct {p1, v0, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x384

    invoke-static {p1, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
