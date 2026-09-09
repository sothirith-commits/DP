.class public final Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/DriveModeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    new-instance v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeEconomy:Landroid/widget/LinearLayout;

    const-string v2, "modeEconomy"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->iconEconomy:Landroid/widget/ImageView;

    const-string v3, "iconEconomy"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->labelEconomy:Landroid/widget/TextView;

    const-string v4, "labelEconomy"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeComfort:Landroid/widget/LinearLayout;

    const-string v3, "modeComfort"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->iconComfort:Landroid/widget/ImageView;

    const-string v4, "iconComfort"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->labelComfort:Landroid/widget/TextView;

    const-string v5, "labelComfort"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v2, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeSport:Landroid/widget/LinearLayout;

    const-string v4, "modeSport"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->iconSport:Landroid/widget/ImageView;

    const-string v5, "iconSport"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->labelSport:Landroid/widget/TextView;

    const-string v6, "labelSport"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v3, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeExclusive:Landroid/widget/LinearLayout;

    const-string v5, "modeExclusive"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->iconExclusive:Landroid/widget/ImageView;

    const-string v6, "iconExclusive"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->labelExclusive:Landroid/widget/TextView;

    const-string v7, "labelExclusive"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v4, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;

    iget-object v5, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->modeCustom:Landroid/widget/LinearLayout;

    const-string v6, "modeCustom"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->iconCustom:Landroid/widget/ImageView;

    const-string v7, "iconCustom"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$modeViews$2;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/DriveModeWidgetViewBinding;->labelCustom:Landroid/widget/TextView;

    const-string v7, "labelCustom"

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v4, v5, v6, p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeViews;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
