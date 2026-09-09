.class public final Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic $cardView:Landroid/view/View;

.field public final synthetic $isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $popupAnchor:Landroid/view/View;

.field public final synthetic $swipeStartX:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $touchView:Landroid/view/View;

.field public final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->$swipeStartX:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->$isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->$popupAnchor:Landroid/view/View;

    iput-object p6, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->$cardView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p0, "e"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    const-string p0, "e"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "climate:open_panel"

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->open(Ljava/lang/String;)Z

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-string p3, "e2"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->$swipeStartX:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p2, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->$isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p4, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    if-nez p4, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$getSwipeStartThresholdPx$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)F

    move-result v1

    cmpg-float p4, p4, v1

    if-gez p4, :cond_1

    return p3

    :cond_1
    iget-boolean p3, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 p4, 0x1

    if-nez p3, :cond_3

    iput-boolean p4, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$readInteractiveTemperature(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)F

    move-result p2

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->$popupAnchor:Landroid/view/View;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->$cardView:Landroid/view/View;

    invoke-static {v0, p3, p0, p2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$showTemperaturePopup(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;Landroid/view/View;F)V

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$getTemperaturePopup$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-boolean p2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isUserInteracting:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean p4, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isUserInteracting:Z

    sget-object p2, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    neg-float p0, p1

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$getSwipeStepPx$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$getTemperaturePopup$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    iget p3, p1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->initialTemperature:F

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    add-float/2addr p0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;->normalizeTemperature(F)F

    move-result p0

    invoke-virtual {p1, p0, p4}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->updateSelectedTemperature(FZ)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->resetAutoClose()V

    :cond_4
    return p4
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$getTouchFeedbackEnabled$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playClickFeedback(Landroid/view/View;)V

    :cond_0
    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$performTemperaturePrimaryActionWithDebounce(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)Z

    const/4 p0, 0x1

    return p0
.end method
