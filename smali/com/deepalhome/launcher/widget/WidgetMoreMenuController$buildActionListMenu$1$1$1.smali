.class public final Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildActionListMenu$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $action:Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

.field final synthetic this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildActionListMenu$1$1$1;->$action:Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildActionListMenu$1$1$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildActionListMenu$1$1$1;->$action:Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    iget-object v0, v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$buildActionListMenu$1$1$1;->this$0:Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dismiss()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
