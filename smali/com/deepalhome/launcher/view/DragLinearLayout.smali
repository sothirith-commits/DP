.class public Lcom/deepalhome/launcher/view/DragLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "DragLinearLayout"

.field private static final MAX_DRAG_SCROLL_SPEED:I = 0x10


# instance fields
.field private activePointerId:I

.field private awaitingSwapAnimationsForDragEnd:Z

.field private callback:Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;

.field private containerScrollView:Lcom/deepalhome/launcher/view/ScrollableView;

.field private downPos:I

.field private dragCallbackActive:Z

.field private final dragEndFallbackRunnable:Ljava/lang/Runnable;

.field private final dragEndFallbackTimeoutMs:J

.field private dragUpdater:Ljava/lang/Runnable;

.field private final draggableChildren:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;",
            ">;"
        }
    .end annotation
.end field

.field private final draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

.field private final maxSwitchDurationMs:J

.field private final minSwitchDurationMs:J

.field private final nominalDistanceScaled:F

.field private final nominalSwitchDurationMs:J

.field private runningSwapAnimations:I

.field private scrollSensitiveAreaThickness:I

.field private final slop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/view/DragLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragCallbackActive:Z

    iput-boolean p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->awaitingSwapAnimationsForDragEnd:Z

    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->runningSwapAnimations:I

    new-instance p2, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v0, 0x15

    invoke-direct {p2, v0, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragEndFallbackRunnable:Ljava/lang/Runnable;

    const/4 p2, -0x1

    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->downPos:I

    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->activePointerId:I

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    new-instance p2, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    invoke-direct {p2, p0, v0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;-><init>(Lcom/deepalhome/launcher/view/DragLinearLayout;I)V

    iput-object p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->slop:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c0010

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->nominalSwitchDurationMs:J

    iput-wide v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->minSwitchDurationMs:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->maxSwitchDurationMs:J

    const p2, 0x7f0c000a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragEndFallbackTimeoutMs:J

    const p2, 0x7f0700b3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->scrollSensitiveAreaThickness:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->scrollSensitiveAreaThickness:I

    :goto_0
    const p2, 0x7f0700a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->nominalDistanceScaled:F

    return-void
.end method

.method public static synthetic access$000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragCallbackActive:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/deepalhome/launcher/view/DragLinearLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->awaitingSwapAnimationsForDragEnd:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/deepalhome/launcher/view/DragLinearLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->awaitSwapAnimationsThenNotifyDragEnd()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/deepalhome/launcher/view/DragLinearLayout;F)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->getTranslateAnimationDuration(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1700(Lcom/deepalhome/launcher/view/DragLinearLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onSwapAnimationStarted()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/deepalhome/launcher/view/DragLinearLayout;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/view/DragLinearLayout;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$2000(Lcom/deepalhome/launcher/view/DragLinearLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onSwapAnimationFinished()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->callback:Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/deepalhome/launcher/view/DragLinearLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onDragStop()V

    return-void
.end method

.method public static synthetic access$2400(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/ScrollableView;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/deepalhome/launcher/view/DragLinearLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onDrag(I)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/deepalhome/launcher/view/DragLinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->startDetectingDrag(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/deepalhome/launcher/view/DragLinearLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->notifyDragEnd()V

    return-void
.end method

.method public static synthetic access$400(Lcom/deepalhome/launcher/view/DragLinearLayout;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->getDragDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private awaitSwapAnimationsThenNotifyDragEnd()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragCallbackActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->awaitingSwapAnimationsForDragEnd:Z

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->runningSwapAnimations:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->notifyDragEnd()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragEndFallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragEndFallbackRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragEndFallbackTimeoutMs:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    instance-of v0, p0, Lcom/deepalhome/launcher/window/WindowView;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/window/WindowView;->createDragSnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getDragDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f0700a3

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v3, v2, p0}, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {p0, v1, v0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v3
.end method

.method private getExternalPointerPos(Landroid/view/MotionEvent;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    aget p1, v0, v1

    :goto_0
    int-to-float p1, p1

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    const/4 p1, 0x0

    aget p1, v0, p1

    goto :goto_0
.end method

.method private getTranslateAnimationDuration(F)J
    .locals 6

    iget-wide v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->maxSwitchDurationMs:J

    iget-wide v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->minSwitchDurationMs:J

    iget-wide v4, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->nominalSwitchDurationMs:J

    long-to-float v4, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v4

    iget p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->nominalDistanceScaled:F

    div-float/2addr p1, p0

    float-to-long p0, p1

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private handleContainerScroll(I)V
    .locals 0

    return-void
.end method

.method private maybeNotifyDragEndAfterSwapAnimations()V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragCallbackActive:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->awaitingSwapAnimationsForDragEnd:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->runningSwapAnimations:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->notifyDragEnd()V

    :cond_2
    :goto_0
    return-void
.end method

.method private nextDraggablePosition(I)I
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private notifyDragEnd()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragEndFallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->awaitingSwapAnimationsForDragEnd:Z

    iget-boolean v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragCallbackActive:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragCallbackActive:Z

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->callback:Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$endDrag(Lcom/deepalhome/launcher/window/WindowsView;)V

    :cond_1
    return-void
.end method

.method private onDrag(I)V
    .locals 14

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iput p1, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->totalDragOffset:I

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->updateTargetHead()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget v0, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startHead:I

    iget p1, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->totalDragOffset:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->handleContainerScroll(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget p1, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->position:I

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->nextDraggablePosition(I)I

    move-result p1

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget v1, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->position:I

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->previousDraggablePosition(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v5, :cond_0

    move v4, v6

    move v7, v4

    move v8, v7

    :goto_0
    move v9, v8

    goto :goto_3

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_1

    :cond_1
    move v4, v6

    move v7, v4

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v9

    goto :goto_3

    :cond_2
    move v8, v6

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    goto :goto_2

    :cond_4
    move v4, v6

    move v7, v4

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    :goto_3
    if-eqz v2, :cond_5

    iget-object v10, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget v10, v10, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->thickness:I

    add-int/2addr v10, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    if-le v10, v7, :cond_5

    move v4, v5

    goto :goto_4

    :cond_5
    move v4, v6

    :goto_4
    if-eqz v3, :cond_6

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    if-ge v0, v9, :cond_6

    move v6, v5

    :cond_6
    if-nez v4, :cond_7

    if-eqz v6, :cond_e

    :cond_7
    if-eqz v4, :cond_8

    move-object v11, v2

    goto :goto_5

    :cond_8
    move-object v11, v3

    :goto_5
    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget v12, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->position:I

    if-eqz v4, :cond_9

    move v13, p1

    goto :goto_6

    :cond_9
    move v13, v1

    :goto_6
    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {p1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;

    iget-object p1, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;->swapAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    if-eqz p1, :cond_c

    if-eq p1, v5, :cond_b

    const/4 p1, 0x0

    :goto_7
    move v10, p1

    goto :goto_8

    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result p1

    goto :goto_7

    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result p1

    goto :goto_7

    :goto_8
    if-eqz v4, :cond_d

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 p1, v13, -0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-object p1, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_9

    :cond_d
    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 p1, v12, -0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-object p1, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_9
    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iput v13, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->position:I

    invoke-virtual {v11}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/deepalhome/launcher/view/DragLinearLayout$4;

    move-object v7, v0

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v13}, Lcom/deepalhome/launcher/view/DragLinearLayout$4;-><init>(Lcom/deepalhome/launcher/view/DragLinearLayout;Landroid/view/ViewTreeObserver;FLandroid/view/View;II)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-object p1, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/deepalhome/launcher/view/DragLinearLayout$5;

    invoke-direct {v0, p0, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout$5;-><init>(Lcom/deepalhome/launcher/view/DragLinearLayout;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_e
    return-void
.end method

.method private onDragStop()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget v2, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->totalDragOffset:I

    int-to-float v3, v2

    iget v4, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->targetHeadOffset:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    aput v2, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget v3, v3, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->targetHeadOffset:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/deepalhome/launcher/view/DragLinearLayout;->getTranslateAnimationDuration(F)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-object v1, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/kyleduo/switchbutton/SwitchButton$1;

    invoke-direct {v2, v0, p0}, Lcom/kyleduo/switchbutton/SwitchButton$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-object v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/transition/Transition$3;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private onSwapAnimationFinished()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->runningSwapAnimations:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->runningSwapAnimations:I

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->maybeNotifyDragEndAfterSwapAnimations()V

    return-void
.end method

.method private onSwapAnimationStarted()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->runningSwapAnimations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->runningSwapAnimations:I

    return-void
.end method

.method private onTouchEnd()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->downPos:I

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->activePointerId:I

    return-void
.end method

.method private previousDraggablePosition(I)I
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static smootherStep(FFF)F
    .locals 1

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p1, p0, p0

    mul-float/2addr p1, p0

    const/high16 p2, 0x40c00000    # 6.0f

    mul-float/2addr p2, p0

    const/high16 v0, 0x41700000    # 15.0f

    sub-float/2addr p2, v0

    mul-float/2addr p2, p0

    const/high16 p0, 0x41200000    # 10.0f

    add-float/2addr p2, p0

    mul-float/2addr p2, p1

    return p2
.end method

.method private startDetectingDrag(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;

    iget-object v1, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;->swapAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    invoke-virtual {p0, p1, v0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startDetectingOnPossibleDrag(Landroid/view/View;I)V

    return-void
.end method

.method private startDrag()V
    .locals 4

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragCallbackActive:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragEndFallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->awaitingSwapAnimationsForDragEnd:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->dragCallbackActive:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->callback:Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;

    iget-object v0, v0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$startDrag(Lcom/deepalhome/launcher/window/WindowsView;)V

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-object v2, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    iget-object v3, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->view:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$400(Lcom/deepalhome/launcher/view/DragLinearLayout;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->viewDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->view:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->dragging:Z

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method


# virtual methods
.method public addDragView(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/view/DragLinearLayout;->setViewDraggable(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public addDragView(Landroid/view/View;Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-lt v1, p3, :cond_0

    iget-object v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/view/DragLinearLayout;->setViewDraggable(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public beginExternalDrag(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settling()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->activePointerId:I

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/view/DragLinearLayout;->getExternalPointerPos(Landroid/view/MotionEvent;)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->downPos:I

    iget-object p2, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;->swapAnimation:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    iget-object p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    invoke-virtual {p2, p1, v0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startDetectingOnPossibleDrag(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->startDrag()V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->dragging:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settling()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->totalDragOffset:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->totalDragOffset:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->viewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public endExternalDrag()Z
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onTouchEnd()V

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->dragging:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onDragStop()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settling()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->stopDetecting()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->notifyDragEnd()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getScrollSensitiveHeight()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->scrollSensitiveAreaThickness:I

    return p0
.end method

.method public getScrollSensitiveWidth()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->scrollSensitiveAreaThickness:I

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->activePointerId:I

    if-eq p1, v0, :cond_7

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->activePointerId:I

    const/4 v3, -0x1

    if-ne v3, v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->downPos:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->slop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->downPos:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->slop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    :goto_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->startDrag()V

    return v1

    :cond_6
    :goto_1
    return v2

    :cond_7
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onTouchEnd()V

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->dragging:Z

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settling()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->stopDetecting()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->notifyDragEnd()V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    if-eqz v0, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->downPos:I

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->downPos:I

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->activePointerId:I

    :cond_c
    :goto_3
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->activePointerId:I

    if-eq p1, v0, :cond_6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->dragging:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->activePointerId:I

    const/4 v3, -0x1

    if-ne v3, v0, :cond_3

    :goto_0
    return v1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iget v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->downPos:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    :goto_1
    float-to-int v1, p1

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    goto :goto_1

    :goto_2
    iget p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->downPos:I

    sub-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onDrag(I)V

    return v2

    :cond_6
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onTouchEnd()V

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->dragging:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onDragStop()V

    goto :goto_3

    :cond_7
    iget-boolean v0, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settling()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->stopDetecting()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->notifyDragEnd()V

    :cond_8
    :goto_3
    return v2

    :cond_9
    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settling()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->startDrag()V

    return v2

    :cond_b
    :goto_4
    return v1
.end method

.method public removeDragView(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-lt v2, v0, :cond_1

    iget-object v3, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setCallback(Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->callback:Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;

    return-void
.end method

.method public setContainerScrollView(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/deepalhome/launcher/view/DuckType;->coerce(Ljava/lang/Object;)Lcom/deepalhome/launcher/view/DuckType;

    move-result-object p0

    const-class p1, Lcom/deepalhome/launcher/view/ScrollableView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/DuckType;->to(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setScrollSensitiveHeight(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->scrollSensitiveAreaThickness:I

    return-void
.end method

.method public setScrollSensitiveWidth(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->scrollSensitiveAreaThickness:I

    return-void
.end method

.method public setViewDraggable(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragHandleOnTouchListener;

    invoke-direct {v0, p0, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragHandleOnTouchListener;-><init>(Lcom/deepalhome/launcher/view/DragLinearLayout;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggableChildren:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    new-instance p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a child, cannot make draggable."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateExternalDrag(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->draggedItem:Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    iget-boolean v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->dragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    iget v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->activePointerId:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->getExternalPointerPos(Landroid/view/MotionEvent;)I

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;->downPos:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->onDrag(I)V

    const/4 p0, 0x1

    return p0
.end method
