.class public final Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView$getMoreMenuActions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView$getMoreMenuActions$1;->this$0:Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView$getMoreMenuActions$1;->this$0:Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->getOnResizeRequest()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
