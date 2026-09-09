.class public final Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;->this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;->this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    sget v0, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->$r8$clinit:I

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->startWidgetDrag(Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;->this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;->this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    const v2, 0x7f1302ea

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;->this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    const v3, 0x7f1302d8

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1$1;

    iget-object v4, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;->this$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-direct {v3, v4, p0}, Lcom/deepalhome/launcher/widget/AddWidgetDialog$startWidgetDragWithPrecheck$1$1;-><init>(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->show()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
