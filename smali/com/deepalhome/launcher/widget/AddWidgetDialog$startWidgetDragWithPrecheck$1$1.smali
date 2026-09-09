.class public final Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1$1;->this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/widget/MagiskWidgetPrecheckStore;->INSTANCE:Lcom/deepalhome/launcher/widget/MagiskWidgetPrecheckStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "magisk_widget_prechecked"

    invoke-virtual {v0, v2, v1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1$1;->this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    sget v1, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->startWidgetDrag(Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
