.class public final Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

.field final synthetic this$0:Lcom/deepalhome/launcher/widget/WidgetsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$2;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$2;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    const-string v0, "preset"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$2;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$1$2;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    invoke-static {v0, p0, p1}, Lcom/deepalhome/launcher/widget/WidgetsView;->access$resizeWidget(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/WidgetInfo;Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
