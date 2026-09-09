.class public final Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$allAppsItemView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$allAppsItemView$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$allAppsItemView$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->allAppsItem:Landroid/widget/LinearLayout;

    const-string v2, "allAppsItem"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$allAppsItemView$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->iconAllApps:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v3, "iconAllApps"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$allAppsItemView$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->labelAllApps:Landroid/widget/TextView;

    const-string v3, "labelAllApps"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;-><init>(Landroid/widget/LinearLayout;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/TextView;)V

    return-object v0
.end method
