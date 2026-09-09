.class public final Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$3;
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

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$3;->$progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$3;->this$0:Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    const-string v0, "step"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->CheckRoot:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->Completed:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$3;->$progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$3;->this$0:Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$3;->$progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$3;->this$0:Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    new-instance v2, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/16 v3, 0x11

    invoke-direct {v2, v1, p0, p1, v3}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
