.class public final Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic $touchView:Landroid/view/View;

.field public final synthetic $verticalAnchor:Landroid/view/View;

.field public final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

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

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    iget p4, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->swipeStartX:F

    sub-float/2addr p1, p4

    iget-boolean p4, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isSwiping:Z

    if-nez p4, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iget v0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->swipeStartThresholdPx:F

    cmpg-float p4, p4, v0

    if-gez p4, :cond_1

    return p3

    :cond_1
    iget-boolean p4, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isSwiping:Z

    const/4 v0, 0x1

    if-nez p4, :cond_4

    iput-boolean v0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isSwiping:Z

    iput-boolean v0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->touchMoved:Z

    iget-object p4, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->committedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-nez p4, :cond_2

    sget-object p4, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->Companion:Lcom/deepalhome/launcher/navigation/WindDirectionMode$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

    invoke-virtual {p2, v1, p0, p4}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->showWindDirectionPopup(Landroid/view/View;Landroid/view/View;Lcom/deepalhome/launcher/navigation/WindDirectionMode;)V

    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-eqz p0, :cond_4

    iget-boolean p4, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isUserInteracting:Z

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isUserInteracting:Z

    sget-object p4, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    iget p0, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->swipeStepPx:F

    div-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    iget-object p1, p2, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-eqz p1, :cond_5

    iget p2, p1, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupSwipeBaseIndex:I

    add-int/2addr p2, p0

    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->orderedModes:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    invoke-static {p2, p3, p4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    invoke-static {p2, p3, p4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-virtual {p1, p0, v0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->updateSelectedMode(Lcom/deepalhome/launcher/navigation/WindDirectionMode;Z)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->resetAutoClose()V

    :cond_5
    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isSwiping:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->touchMoved:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->touchFeedbackEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playClickFeedback(Landroid/view/View;)V

    :cond_1
    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    if-nez v0, :cond_3

    move-object v0, p0

    :cond_3
    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->committedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-nez v1, :cond_4

    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->Companion:Lcom/deepalhome/launcher/navigation/WindDirectionMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    :cond_4
    invoke-virtual {p1, p0, v0, v1}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->showWindDirectionPopup(Landroid/view/View;Landroid/view/View;Lcom/deepalhome/launcher/navigation/WindDirectionMode;)V

    const/4 v1, 0x1

    :cond_5
    :goto_0
    return v1
.end method
