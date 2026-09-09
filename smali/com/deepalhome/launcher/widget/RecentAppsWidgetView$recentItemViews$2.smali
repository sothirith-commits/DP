.class public final Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->appItem1:Landroid/widget/LinearLayout;

    const-string v2, "appItem1"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->iconApp1:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v3, "iconApp1"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->labelApp1:Landroid/widget/TextView;

    const-string v4, "labelApp1"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;-><init>(Landroid/widget/LinearLayout;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/TextView;)V

    new-instance v1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->appItem2:Landroid/widget/LinearLayout;

    const-string v3, "appItem2"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->iconApp2:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v4, "iconApp2"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->labelApp2:Landroid/widget/TextView;

    const-string v5, "labelApp2"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;-><init>(Landroid/widget/LinearLayout;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/TextView;)V

    new-instance v2, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->appItem3:Landroid/widget/LinearLayout;

    const-string v4, "appItem3"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->iconApp3:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v5, "iconApp3"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->labelApp3:Landroid/widget/TextView;

    const-string v5, "labelApp3"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;-><init>(Landroid/widget/LinearLayout;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/TextView;)V

    filled-new-array {v0, v1, v2}, [Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
