.class public final Lcom/deepalhome/launcher/map/MapAppWindow;
.super Lcom/deepalhome/launcher/window/BaseAppWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/window/BaseAppWindow<",
        "Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final barVisibilityListener:Lcom/deepalhome/launcher/map/MapAppWindow$barVisibilityListener$1;

.field public final dragHotspot$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final dragHotspotHeight$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final dragHotspotWidth$delegate:Lkotlin/SynchronizedLazyImpl;

.field public hasSystemOverlay:Z

.field public final hideDebounceMs:J

.field public final hotspotElevationDelayMs:J

.field public hotspotElevationRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

.field public mapRecoveryCount:I

.field public mapRecoveryRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

.field public final maxRecoveryRetries:I

.field public final maxWindowFrameRetries:I

.field public final overlayListener:Lcom/deepalhome/launcher/map/MapAppWindow$overlayListener$1;

.field public pendingHideRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

.field public final recoveryIntervalMs:J

.field public showIndicatorRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

.field public windowFrameRetryCount:I

.field public windowFrameRetryPosted:Z

.field public final windowViewLayoutListener:Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

.field public final windowsListener:Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;


# direct methods
.method public static $r8$lambda$SVEOWi6XNvG4VWOMOa12glHLD70(Lcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspot()Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->setIndicatorVisible(Z)V

    :cond_0
    return-void
.end method

.method public static $r8$lambda$gyuQdDM276bjBFvvqsbIxnt2ICg(Lcom/deepalhome/launcher/map/MapAppWindow;IIIIIIII)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-ne p1, p5, :cond_1

    if-ne p2, p6, :cond_1

    if-ne p3, p7, :cond_1

    if-eq p4, p8, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateDragHotspot()V

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspot()Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->setIndicatorVisible(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->showIndicatorRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->showIndicatorRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    const-wide/16 p2, 0x96

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public static $r8$lambda$ig8_3Bn6sOSZpFFiFLfCmM_ci9I(Lcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hotspotElevationRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspot()Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    move-result-object p0

    iget-object v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->windowManager:Landroid/view/WindowManager;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isIndicatorAdded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isDragging:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->indicatorView:Landroid/widget/ImageView;

    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isIndicatorAdded:Z

    iget v2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentX:I

    iget v3, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentY:I

    iget v4, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentWidth:I

    iget v5, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->createOverlayParams(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isIndicatorAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FloatingMapDragHotspot"

    const-string v1, "Failed to elevate indicator view"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$barVisibilityListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$barVisibilityListener$1;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->barVisibilityListener:Lcom/deepalhome/launcher/map/MapAppWindow$barVisibilityListener$1;

    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2;

    invoke-direct {v0, p1, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/map/MapAppWindow;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->dragHotspot$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspotHeight$2;

    invoke-direct {v0, p1}, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspotHeight$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->dragHotspotHeight$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspotWidth$2;

    invoke-direct {v0, p1}, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspotWidth$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->dragHotspotWidth$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$overlayListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$overlayListener$1;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->overlayListener:Lcom/deepalhome/launcher/map/MapAppWindow$overlayListener$1;

    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;-><init>(Lcom/deepalhome/launcher/window/BaseAppWindow;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowsListener:Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;

    const/4 p1, 0x3

    iput p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->maxWindowFrameRetries:I

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hideDebounceMs:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hotspotElevationDelayMs:J

    const/4 p1, 0x5

    iput p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->maxRecoveryRetries:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->recoveryIntervalMs:J

    new-instance p1, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowViewLayoutListener:Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

    return-void
.end method

.method private final getDragHotspot()Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->dragHotspot$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    return-object p0
.end method

.method private final getDragHotspotHeight()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->dragHotspotHeight$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getDragHotspotWidth()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->dragHotspotWidth$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v1

    :cond_1
    iget-object p3, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->pendingHideRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    if-eqz p3, :cond_2

    invoke-virtual {p0, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->pendingHideRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->shouldShowMap()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/map/MapAppWindow;->showMap(Z)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    if-eqz p1, :cond_4

    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->pendingHideRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    iget-wide p2, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hideDebounceMs:J

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/map/MapAppWindow;->hideMap(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final cancelMapRecovery()V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryCount:I

    return-void
.end method

.method public final endDrag()V
    .locals 3

    invoke-super {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->endDrag()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;->maskView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspot()Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    move-result-object v0

    iget-object v1, v0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->indicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->removeTouchCaptureView()V

    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final findWindowView()Lcom/deepalhome/launcher/window/WindowView;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/deepalhome/launcher/window/WindowView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/deepalhome/launcher/window/WindowView;

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0085

    return p0
.end method

.method public final hideMap(Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowFrameRetryCount:I

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->hide()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspot()Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->dismiss()V

    :cond_0
    return-void
.end method

.method public final initOverlayDetector()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->conditions:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-static {}, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->refreshLogcatListenerRegistration()V

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/OverlayConditions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->LAUNCHER_FOCUS:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    sget-object v3, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->conditions:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->refreshLogcatListenerRegistration()V

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMapAppPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->INSTANCE:Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->isCompatible(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/map/MapUtil;->systemOverlaySensitiveDeepalMapPackages:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    sget-object v1, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->DIALOG_SERVICE:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    sget-object v2, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->MAP_OPTION_LIST:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    sget-object v3, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->HVAC_PANEL:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    filled-new-array {v3, v1, v2}, [Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "conditionList"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    sget-object v3, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->conditions:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->refreshLogcatListenerRegistration()V

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->overlayListener:Lcom/deepalhome/launcher/map/MapAppWindow$overlayListener$1;

    const-string v1, "listener"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    monitor-enter v0

    :try_start_0
    sget-boolean p0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    monitor-exit v0

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    :try_start_1
    sput-boolean p0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->isStarted:Z

    invoke-static {}, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->refreshLogcatListenerRegistration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowsListener:Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;

    const-string v1, "listener"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->overlayListener:Lcom/deepalhome/launcher/map/MapAppWindow$overlayListener$1;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->barVisibilityListener:Lcom/deepalhome/launcher/map/MapAppWindow$barVisibilityListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->activeOverlays:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    const-string v1, "activeOverlays"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->findWindowView()Lcom/deepalhome/launcher/window/WindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowViewLayoutListener:Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->showIndicatorRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hotspotElevationRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hotspotElevationRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->pendingHideRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iput-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->pendingHideRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->cancelMapRecovery()V

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowsListener:Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;

    const-string v1, "listener"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->overlayListener:Lcom/deepalhome/launcher/map/MapAppWindow$overlayListener$1;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->barVisibilityListener:Lcom/deepalhome/launcher/map/MapAppWindow$barVisibilityListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->removeOnVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->removeOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->findWindowView()Lcom/deepalhome/launcher/window/WindowView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowViewLayoutListener:Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->hide()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspot()Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    move-result-object v0

    iget-boolean v0, v0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isTouchCaptureAdded:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspot()Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->dismiss()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspot()Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    move-result-object v0

    iget-object v1, v0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->indicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->removeTouchCaptureView()V

    :goto_0
    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;->startMapBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->initOverlayDetector()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p0, p2, p2, p1}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    return-void
.end method

.method public final postNextRecovery()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryCount:I

    iget v1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->maxRecoveryRetries:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;I)V

    iput-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    iget-wide v1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->recoveryIntervalMs:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final shouldShowMap()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showMap(Z)V
    .locals 11

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget-object v3, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_2

    goto :goto_0

    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_2

    :goto_0
    iget v3, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowFrameRetryCount:I

    if-eqz v3, :cond_4

    iput v2, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowFrameRetryCount:I

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowFrameRetryCount:I

    iget v4, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->maxWindowFrameRetries:I

    if-ge v3, v4, :cond_4

    const/4 p1, 0x1

    add-int/2addr v3, p1

    iput v3, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowFrameRetryCount:I

    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowFrameRetryPosted:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowFrameRetryPosted:Z

    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070258

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v8, v4, v3

    sget-object v4, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->getTopInsetPx(Landroid/content/Context;)I

    move-result v3

    :cond_5
    if-gtz v8, :cond_6

    iput v2, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowFrameRetryCount:I

    return-void

    :cond_6
    sget-object v2, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v6, v4, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v10, p1

    invoke-static/range {v5 .. v10}, Lcom/deepalhome/launcher/map/MapController;->show(IIIIIZ)V

    const-string p1, "com.baidu.naviauto.deepal"

    const-string v0, "com.baidu.naviauto"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMapAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->isCustomNavigationBarEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->isCarNavigationBarVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/app/Activity;

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyNavigationBarVisibility(Landroid/app/Activity;)V

    :goto_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateDragHotspot()V

    iget-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hotspotElevationRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hotspotElevationRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    iget-wide v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hotspotElevationDelayMs:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_b
    :goto_5
    iput v2, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowFrameRetryCount:I

    return-void
.end method

.method public final startDragging()V
    .locals 2

    invoke-super {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->startDragging()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->cancelMapRecovery()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;->maskView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    return-void
.end method

.method public final updateDragHotspot()V
    .locals 10

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->findWindowView()Lcom/deepalhome/launcher/window/WindowView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->dragBtn:Landroid/widget/ImageView;

    const-string v2, "dragBtn"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspotWidth()I

    move-result v2

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspotHeight()I

    move-result v1

    :goto_1
    if-lez v2, :cond_b

    if-gtz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    invoke-direct {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->getDragHotspot()Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    move-result-object p0

    iget-object v3, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->indicatorView:Landroid/widget/ImageView;

    sget-object v4, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f08027a

    goto :goto_2

    :cond_5
    const v4, 0x7f080279

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v4, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isIndicatorAdded:Z

    const/4 v6, 0x1

    const-string v7, "FloatingMapDragHotspot"

    iget-object v8, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->windowManager:Landroid/view/WindowManager;

    if-eqz v4, :cond_a

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isDragging:Z

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    iput v5, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentX:I

    iput v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentY:I

    iput v2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentWidth:I

    iput v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentHeight:I

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v9, v4, Landroid/view/WindowManager$LayoutParams;

    if-eqz v9, :cond_7

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_0
    invoke-interface {v8, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "Failed to update indicator position"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_4
    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isDragging:Z

    if-nez v0, :cond_b

    invoke-virtual {p0, v6}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->setIndicatorVisible(Z)V

    goto :goto_5

    :cond_a
    iput v5, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentX:I

    iput v0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentY:I

    iput v2, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentWidth:I

    iput v1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->currentHeight:I

    invoke-static {v5, v0, v2, v1}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->createOverlayParams(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :try_start_1
    invoke-interface {v8, v3, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v6, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->isIndicatorAdded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    const-string v0, "Failed to add indicator view"

    invoke-static {v7, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_5
    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const v1, 0x7f06025b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;->maskView:Landroid/widget/ImageView;

    const v0, 0x7f100018

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const v1, 0x7f06025a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;->maskView:Landroid/widget/ImageView;

    const v0, 0x7f100017

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    sget-object p0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/deepalhome/launcher/map/MapController;->setTheme(I)V

    :cond_2
    return-void
.end method
