.class public final Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $action:Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

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
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->$action:Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    iput-object p3, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iput-object p4, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->$action:Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    iget-object v0, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    iget-object v8, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget-object v9, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->$action:Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    iget-object v10, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->currentAnchor:Landroid/view/View;

    if-nez v10, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createMenuContainer()Landroid/widget/LinearLayout;

    move-result-object v11

    iget v2, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->iconRes:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v7, 0x34

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createActionRow$default(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;ILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    invoke-virtual {v0, v11}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->addDivider(Landroid/widget/LinearLayout;)V

    iget v2, v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->iconRes:I

    new-instance v6, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildActionListMenu$1$1$1;

    invoke-direct {v6, v1, v0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildActionListMenu$1$1$1;-><init>(Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v3, v1, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->title:Ljava/lang/String;

    const/16 v7, 0x1c

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createActionRow$default(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;ILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v11}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->addDivider(Landroid/widget/LinearLayout;)V

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1300c4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p0, "getString(...)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildActionListMenu$1$2;

    invoke-direct {v6, v0, v8, v9}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildActionListMenu$1$2;-><init>(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v2, 0x7f0800ed

    const/16 v7, 0x1c

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->createActionRow$default(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;ILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v11, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v10, v11}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->showContent(Landroid/view/View;Landroid/widget/LinearLayout;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->$action:Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    iget-object v0, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$3$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dismiss()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
