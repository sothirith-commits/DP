.class public final Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/WidgetsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/WidgetsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$2;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/widget/WidgetInfo;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$showMoreMenu$2;->this$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/widget/WidgetsView;->access$getWidgetManager$p(Lcom/deepalhome/launcher/widget/WidgetsView;)Lcom/deepalhome/launcher/widget/IWidgetManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/deepalhome/launcher/widget/IWidgetManager;->save()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
