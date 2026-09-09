.class public final Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$2;->this$0:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/MotionEvent;

    const-string v0, "touchedView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "event"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$installDragHandles$2;->this$0:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p0, p1, v0, p2}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->access$recordDragTouchPoint(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/view/View;FF)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
