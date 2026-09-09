.class public final Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    new-instance v0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->modeAuto:Landroid/widget/LinearLayout;

    const-string v2, "modeAuto"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->iconAuto:Landroid/widget/ImageView;

    const-string v3, "iconAuto"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->labelAuto:Landroid/widget/TextView;

    const-string v4, "labelAuto"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v1, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->modeCooling:Landroid/widget/LinearLayout;

    const-string v3, "modeCooling"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->iconCooling:Landroid/widget/ImageView;

    const-string v4, "iconCooling"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->labelCooling:Landroid/widget/TextView;

    const-string v5, "labelCooling"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v2, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->modeHeating:Landroid/widget/LinearLayout;

    const-string v4, "modeHeating"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->iconHeating:Landroid/widget/ImageView;

    const-string v5, "iconHeating"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->labelHeating:Landroid/widget/TextView;

    const-string v6, "labelHeating"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v3, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->modeVentilation:Landroid/widget/LinearLayout;

    const-string v5, "modeVentilation"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->iconVentilation:Landroid/widget/ImageView;

    const-string v6, "iconVentilation"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->labelVentilation:Landroid/widget/TextView;

    const-string v6, "labelVentilation"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5, p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
