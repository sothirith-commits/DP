.class public final Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$3;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/MotionEvent;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$3;->this$0:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->requestDeferredDragStart()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
