.class public final Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$1;
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

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$1;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iput-object p3, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    iget-object v0, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->onDelete:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$1;->$widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildMainMenu$1$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dismiss()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
