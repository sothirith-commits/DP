.class public final Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public cachedContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

.field public cachedDragTarget:Landroid/view/View;

.field public currentHeight:I

.field public currentWidth:I

.field public currentX:I

.field public currentY:I

.field public downRawX:F

.field public downRawY:F

.field public final getDragTarget:Lkotlin/jvm/functions/Function0;

.field public final getWindowContainer:Lkotlin/jvm/functions/Function0;

.field public final indicatorView:Landroid/widget/ImageView;

.field public isDragging:Z

.field public isIndicatorAdded:Z

.field public isTouchCaptureAdded:Z

.field public movedBeyondSlop:Z

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final screenHeight$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final screenWidth$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final touchCaptureView:Landroid/view/View;

.field public final touchSlop$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$1;Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$2;Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->getWindowContainer:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->getDragTarget:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->appContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->windowManager:Landroid/view/WindowManager;

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object p3, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f08027a

    goto :goto_0

    :cond_0
    const p3, 0x7f080279

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p3, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$$ExternalSyntheticLambda0;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->indicatorView:Landroid/widget/ImageView;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->touchCaptureView:Landroid/view/View;

    new-instance p1, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$screenWidth$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$screenWidth$2;-><init>(Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->screenWidth$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$screenHeight$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$screenHeight$2;-><init>(Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->screenHeight$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$touchSlop$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$touchSlop$2;-><init>(Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->touchSlop$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static createOverlayParams(IIII)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 p0, 0x7f6

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x208

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p0, -0x3

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p0, 0x800033

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method


# virtual methods
.method public final addTouchCaptureView()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isTouchCaptureAdded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->screenWidth$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->screenHeight$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->createOverlayParams(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->touchCaptureView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isTouchCaptureAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FloatingMapDragHotspot"

    const-string v1, "Failed to add touch capture view"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->indicatorView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    iput-object v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedDragTarget:Landroid/view/View;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->removeTouchCaptureView()V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isIndicatorAdded:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FloatingMapDragHotspot"

    const-string v3, "Failed to remove indicator view"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isIndicatorAdded:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isDragging:Z

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public final handleTouch(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->getWindowContainer:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    goto/16 :goto_6

    :cond_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isTouchCaptureAdded:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->addTouchCaptureView()V

    :cond_1
    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isDragging:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->downRawX:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->touchSlop$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v5, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->downRawY:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    :cond_2
    iput-boolean v3, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->movedBeyondSlop:Z

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/view/DragLinearLayout;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    :goto_0
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->getDragTarget:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_5

    iput-object v3, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedDragTarget:Landroid/view/View;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedDragTarget:Landroid/view/View;

    :goto_1
    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v3, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->beginExternalDrag(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isDragging:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->setIndicatorVisible(Z)V

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isDragging:Z

    if-eqz v0, :cond_e

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/view/DragLinearLayout;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    :goto_3
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->updateExternalDrag(Landroid/view/MotionEvent;)Z

    goto :goto_6

    :cond_9
    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isDragging:Z

    if-eqz v0, :cond_b

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/view/DragLinearLayout;

    if-eqz p1, :cond_a

    iput-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    :goto_4
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->endExternalDrag()Z

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v3, :cond_c

    iget-boolean p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->movedBeyondSlop:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_c
    :goto_5
    iput-boolean v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isDragging:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->movedBeyondSlop:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    iput-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->cachedDragTarget:Landroid/view/View;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->removeTouchCaptureView()V

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->addTouchCaptureView()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->downRawX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->downRawY:F

    iput-boolean v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->movedBeyondSlop:Z

    :cond_e
    :goto_6
    return-void
.end method

.method public final removeTouchCaptureView()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isTouchCaptureAdded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->touchCaptureView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FloatingMapDragHotspot"

    const-string v2, "Failed to remove touch capture view"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isTouchCaptureAdded:Z

    return-void
.end method

.method public final setIndicatorVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->indicatorView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method
