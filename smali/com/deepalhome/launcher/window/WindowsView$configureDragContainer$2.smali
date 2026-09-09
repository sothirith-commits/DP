.class public final Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;
.implements Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/window/WindowsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/window/WindowsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragActive$p(Lcom/deepalhome/launcher/window/WindowsView;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    :cond_0
    invoke-static {p0, p1, p3}, Lcom/deepalhome/launcher/window/WindowsView;->access$handleSlipAction(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Z)Z

    move-result p0

    return p0
.end method

.method public mutiFingerSlipProcess()Z
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragActive$p(Lcom/deepalhome/launcher/window/WindowsView;)Z

    move-result p0

    return p0
.end method

.method public onDoubleTap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->access$canStartDismissDrag(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$setDismissDragTracking$p(Lcom/deepalhome/launcher/window/WindowsView;Z)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$setDismissDragMultiTouch$p(Lcom/deepalhome/launcher/window/WindowsView;Z)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$setDismissDragStartX$p(Lcom/deepalhome/launcher/window/WindowsView;F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$setDismissDragStartY$p(Lcom/deepalhome/launcher/window/WindowsView;F)V

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragVelocityTracker$p(Lcom/deepalhome/launcher/window/WindowsView;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$setDismissDragVelocityTracker$p(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/VelocityTracker;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$resetDismissDrag(Lcom/deepalhome/launcher/window/WindowsView;)V

    :goto_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragTracking$p(Lcom/deepalhome/launcher/window/WindowsView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragVelocityTracker$p(Lcom/deepalhome/launcher/window/WindowsView;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragActive$p(Lcom/deepalhome/launcher/window/WindowsView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getWindowHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getCurrentTranslationY()F

    move-result v2

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissThreshold(Lcom/deepalhome/launcher/window/WindowsView;F)F

    move-result p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$computeDismissDragVelocityY(Lcom/deepalhome/launcher/window/WindowsView;)F

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$shouldFinishDismiss(Lcom/deepalhome/launcher/window/WindowsView;FZ)Z

    move-result v0

    :cond_2
    :goto_0
    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    xor-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->finishDrag(Z)V

    :cond_3
    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$resetDismissDrag(Lcom/deepalhome/launcher/window/WindowsView;)V

    :cond_4
    return v1
.end method

.method public singleFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragActive$p(Lcom/deepalhome/launcher/window/WindowsView;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    sget-object p2, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isEZ6()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$handleSlipAction(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Z)Z

    move-result p0

    return p0
.end method

.method public singleFingeronSlipProcess(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragTracking$p(Lcom/deepalhome/launcher/window/WindowsView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragVelocityTracker$p(Lcom/deepalhome/launcher/window/WindowsView;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragStartX$p(Lcom/deepalhome/launcher/window/WindowsView;)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragStartY$p(Lcom/deepalhome/launcher/window/WindowsView;)F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragActive$p(Lcom/deepalhome/launcher/window/WindowsView;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_6

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragSlop(Lcom/deepalhome/launcher/window/WindowsView;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    return v1

    :cond_2
    cmpg-float v0, v2, v0

    if-gtz v0, :cond_3

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$resetDismissDrag(Lcom/deepalhome/launcher/window/WindowsView;)V

    return v1

    :cond_3
    cmpg-float v0, p1, v5

    if-gtz v0, :cond_4

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$resetDismissDrag(Lcom/deepalhome/launcher/window/WindowsView;)V

    return v1

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->beginDismissDrag()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$resetDismissDrag(Lcom/deepalhome/launcher/window/WindowsView;)V

    return v1

    :cond_5
    invoke-static {p0, v4}, Lcom/deepalhome/launcher/window/WindowsView;->access$setDismissDragActive$p(Lcom/deepalhome/launcher/window/WindowsView;Z)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$setDismissDragStartTranslation$p(Lcom/deepalhome/launcher/window/WindowsView;F)V

    :cond_6
    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getWindowHeight()I

    move-result v0

    if-gtz v0, :cond_7

    return v1

    :cond_7
    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getDismissDragStartTranslation$p(Lcom/deepalhome/launcher/window/WindowsView;)F

    move-result p0

    add-float/2addr p0, p1

    int-to-float p1, v0

    invoke-static {p0, v5, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->updateDragTranslation(F)V

    return v4

    :cond_8
    :goto_0
    return v1
.end method
