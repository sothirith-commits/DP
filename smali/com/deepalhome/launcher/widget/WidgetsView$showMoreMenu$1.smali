.class public final Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/WidgetsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WidgetsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/widget/WidgetInfo;

    check-cast p2, Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const-string v0, "targetInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "targetView"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-static {v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->access$getWidgetManager$p(Lcom/deepalhome/launcher/widget/WidgetsView;)Lcom/deepalhome/launcher/widget/IWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/deepalhome/launcher/widget/IWidgetManager;->deleteWidget(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/widget/WidgetsView;->access$getBinding$p(Lcom/deepalhome/launcher/widget/WidgetsView;)Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WidgetsViewBinding;->widgetContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
