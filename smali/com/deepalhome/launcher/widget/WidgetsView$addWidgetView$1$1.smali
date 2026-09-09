.class public final Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

.field final synthetic this$0:Lcom/deepalhome/launcher/widget/WidgetsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$1;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->getOnImageWidgetConfigurationRequested()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$1;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
