.class public final Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

.field final synthetic this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;Lcom/deepalhome/launcher/widget/WidgetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$3;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$3;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$3;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    iget-object v1, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->currentAnchor:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->currentWidgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildBackgroundEffectMenu$1$3;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    invoke-virtual {v0, p0, v2}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->buildMainMenu(Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->showContent(Landroid/view/View;Landroid/widget/LinearLayout;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
