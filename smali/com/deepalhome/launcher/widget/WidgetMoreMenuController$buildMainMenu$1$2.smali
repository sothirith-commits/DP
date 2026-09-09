.class public final Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

.field final synthetic $widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$2;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$2;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iput-object p3, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$2;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    iget-object v7, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$2;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    iget-object v8, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$2;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$2;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    check-cast p0, Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;

    iget-object v9, v7, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->currentAnchor:Landroid/view/View;

    if-nez v9, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v8}, Lcom/deepalhome/launcher/widget/WidgetInfo;->getOrCreateStyle()Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    move-result-object v10

    invoke-virtual {v7}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createMenuContainer()Landroid/widget/LinearLayout;

    move-result-object v11

    iget-object v0, v7, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->context:Landroid/content/Context;

    const v1, 0x7f1304dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v12, "getString(...)"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v1, 0x7f080166

    const/4 v3, 0x0

    const/16 v6, 0x34

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createActionRow$default(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;ILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v11}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->addDivider(Landroid/widget/LinearLayout;)V

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1304e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v10, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    new-instance v2, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$1;

    invoke-direct {v2, v10, p0, v7, v8}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$1;-><init>(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    const v3, 0x7f080154

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createSliderSection(ILjava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v11}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->addDivider(Landroid/widget/LinearLayout;)V

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1304dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v10, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    new-instance v2, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$2;

    invoke-direct {v2, v10, p0, v7, v8}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$2;-><init>(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    const p0, 0x7f0800f1

    invoke-virtual {v7, p0, v0, v1, v2}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createSliderSection(ILjava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v11, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v11}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->addDivider(Landroid/widget/LinearLayout;)V

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1300c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$3;

    invoke-direct {v5, v7, v8}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$3;-><init>(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v1, 0x7f0800ed

    const/16 v6, 0x1c

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createActionRow$default(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;ILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v11, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v9, v11}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->showContent(Landroid/view/View;Landroid/widget/LinearLayout;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
