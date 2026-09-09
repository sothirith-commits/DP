.class public final Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    new-instance v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->modePureElectric:Landroid/widget/LinearLayout;

    const-string v2, "modePureElectric"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->iconPureElectric:Landroid/widget/ImageView;

    const-string v3, "iconPureElectric"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->labelPureElectric:Landroid/widget/TextView;

    const-string v4, "labelPureElectric"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->modeCity:Landroid/widget/LinearLayout;

    const-string v3, "modeCity"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->iconCity:Landroid/widget/ImageView;

    const-string v4, "iconCity"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->labelCity:Landroid/widget/TextView;

    const-string v5, "labelCity"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v2, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->modeHighway:Landroid/widget/LinearLayout;

    const-string v4, "modeHighway"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->iconHighway:Landroid/widget/ImageView;

    const-string v5, "iconHighway"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->labelHighway:Landroid/widget/TextView;

    const-string v6, "labelHighway"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v3, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->modeMountain:Landroid/widget/LinearLayout;

    const-string v5, "modeMountain"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->iconMountain:Landroid/widget/ImageView;

    const-string v6, "iconMountain"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/EnergyModeWidgetViewBinding;->labelMountain:Landroid/widget/TextView;

    const-string v6, "labelMountain"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5, p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeViews;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
