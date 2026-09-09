.class public final Lcom/deepalhome/launcher/app/AppShortcutWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/WidgetMoreMenuProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/AppWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/WidgetMoreMenuProvider;"
    }
.end annotation


# instance fields
.field private app:Lcom/deepalhome/launcher/app/App;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getApp()Lcom/deepalhome/launcher/app/App;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;->app:Lcom/deepalhome/launcher/app/App;

    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e002c

    return p0
.end method

.method public getMoreMenuActions()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;->app:Lcom/deepalhome/launcher/app/App;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1304d9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p0, "getString(...)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/deepalhome/launcher/app/AppShortcutWidgetView$getMoreMenuActions$1;

    invoke-direct {v6, v0}, Lcom/deepalhome/launcher/app/AppShortcutWidgetView$getMoreMenuActions$1;-><init>(Ljava/lang/String;)V

    const v4, 0x7f08025c

    const/4 v5, 0x0

    const-string v2, "app_info"

    const/16 v7, 0x18

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lkotlin/jvm/functions/Function0;I)V

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public getMoreMenuScreenLeft()I
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AppWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppWidgetViewBinding;->iconIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v1, "iconIv"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->getDescendantScreenLeft(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public onClicked()V
    .locals 1

    invoke-super {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onClicked()V

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;->app:Lcom/deepalhome/launcher/app/App;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/AppUtil;->start(Ljava/lang/String;)V

    return-void
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method public final setApp(Lcom/deepalhome/launcher/app/App;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;->app:Lcom/deepalhome/launcher/app/App;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AppWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppWidgetViewBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AppWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AppWidgetViewBinding;->iconIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v1, "iconIv"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0800ec

    invoke-static {p0, p1, v0}, Lcom/deepalhome/launcher/util/AppUtil;->bindAppIcon(Landroid/widget/ImageView;Lcom/deepalhome/launcher/app/App;I)V

    return-void
.end method

.method public updateUIMode(Z)V
    .locals 0

    return-void
.end method
