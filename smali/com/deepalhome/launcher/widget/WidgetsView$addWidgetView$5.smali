.class public final Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$5;
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

.field final synthetic this$0:Lcom/deepalhome/launcher/widget/WidgetsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$5;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$5;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iput-object p3, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$5;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$5;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$5;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$5;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-static {v0, v1, p0}, Lcom/deepalhome/launcher/widget/WidgetsView;->access$beginExistingWidgetDrag(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/BaseWidgetView;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
