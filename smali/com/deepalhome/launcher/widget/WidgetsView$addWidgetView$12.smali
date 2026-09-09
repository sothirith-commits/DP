.class public final Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$12;
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


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$12;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$addWidgetView$12;->$widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->notifyDeferredDragReady()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
