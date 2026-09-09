.class public final Lcom/deepalhome/launcher/window/WindowsView;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/WindowsViewBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private final barVisibilityListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private baseBottomPadding:I

.field private final cardTypePopupScale:F

.field private cardTypePopupWindow:Landroid/widget/PopupWindow;

.field private dismissDragActive:Z

.field private final dismissDragMaxFlingVelocity$delegate:Lkotlin/Lazy;

.field private final dismissDragMinFlingVelocity$delegate:Lkotlin/Lazy;

.field private dismissDragMultiTouch:Z

.field private final dismissDragSlop$delegate:Lkotlin/Lazy;

.field private dismissDragStartTranslation:F

.field private dismissDragStartX:F

.field private dismissDragStartY:F

.field private dismissDragTracking:Z

.field private dismissDragVelocityTracker:Landroid/view/VelocityTracker;

.field private dismissPeakDownwardVelocityY:F

.field private dragStartX:I

.field private extraBottomInset:I

.field private initialized:Z

.field private isMultiTouchActive:Z

.field private mapActionPopupWindow:Landroid/widget/PopupWindow;

.field private maxWindowWidth:I

.field private medWindowWidth:I

.field private minWindowWidth:I

.field private navBarInsetBottom:I

.field private pageOffset:I

.field private pipActionPopupWindow:Landroid/widget/PopupWindow;

.field private popupDismissCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private singleFingerGestureBlockedByPip:Z

.field private spaceWidth:I

.field private final threeFingerMinFlingVelocity$delegate:Lkotlin/Lazy;

.field private final windowContainerGestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

.field private windowInsetsListenerInstalled:Z

.field private final windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/window/WindowView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GIgpiQsyyJ87VQFmRVepCzKJMoU(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->installWindowInsetsListener$lambda$0(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XzdQofRA_XYYLgYx0n5VSrWIVv0(Lcom/deepalhome/launcher/window/WindowsView;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/deepalhome/launcher/window/WindowsView;->setupDragHandle$lambda$39(Lcom/deepalhome/launcher/window/WindowsView;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_BIVSccwg0RVymJbqR9Jf8wj0bg(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->setupCardTypeEntryActions$lambda$11$lambda$9(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$awz2ZNRalPJdwjyt3Kwh1tZQl2o(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/deepalhome/launcher/window/WindowsView;->buildCardTypePopupContent$lambda$22$lambda$21$lambda$19$lambda$18(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eMnAbaMfBNhc-uZB8efT0ISW-9g(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowView;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->setupCardTypeEntryActions$lambda$11$lambda$10(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hOEP88k0lt1VjfaeuDKrTTQqHPs(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->showMapActionPopup$lambda$38$lambda$37(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mmwMlMiAj4kKHUfyyrYHa7U4aaU(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->showCardTypePicker$lambda$13$lambda$12(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nWKYLH-ATAUSgFMP2uvo7-OfGSc(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->showPipActionPopup$lambda$36$lambda$35(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zYQptO9u8QXhTFYwNDZlDdYZM9E(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->createTopPopupActionTextView$lambda$34$lambda$33(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/window/WindowsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    new-instance p2, Lcom/deepalhome/launcher/window/WindowsView$barVisibilityListener$1;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/window/WindowsView$barVisibilityListener$1;-><init>(Lcom/deepalhome/launcher/window/WindowsView;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->barVisibilityListener:Lkotlin/jvm/functions/Function1;

    const p2, 0x3fb33333    # 1.4f

    iput p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    new-instance p2, Lcom/deepalhome/launcher/window/WindowsView$dismissDragSlop$2;

    invoke-direct {p2, p1}, Lcom/deepalhome/launcher/window/WindowsView$dismissDragSlop$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragSlop$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/deepalhome/launcher/window/WindowsView$dismissDragMinFlingVelocity$2;

    invoke-direct {p2, p1}, Lcom/deepalhome/launcher/window/WindowsView$dismissDragMinFlingVelocity$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragMinFlingVelocity$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/deepalhome/launcher/window/WindowsView$threeFingerMinFlingVelocity$2;

    invoke-direct {p2, p1}, Lcom/deepalhome/launcher/window/WindowsView$threeFingerMinFlingVelocity$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->threeFingerMinFlingVelocity$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/deepalhome/launcher/window/WindowsView$dismissDragMaxFlingVelocity$2;

    invoke-direct {p2, p1}, Lcom/deepalhome/launcher/window/WindowsView$dismissDragMaxFlingVelocity$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragMaxFlingVelocity$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/deepalhome/launcher/util/GestureHelper;

    new-instance v0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;-><init>(Lcom/deepalhome/launcher/window/WindowsView;)V

    invoke-direct {p2, p1, v0}, Lcom/deepalhome/launcher/util/GestureHelper;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->windowContainerGestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$canStartDismissDrag(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->canStartDismissDrag(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeDismissDragVelocityY(Lcom/deepalhome/launcher/window/WindowsView;)F
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->computeDismissDragVelocityY()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$dismissTopPopupWindows(Lcom/deepalhome/launcher/window/WindowsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->dismissTopPopupWindows()V

    return-void
.end method

.method public static final synthetic access$endDrag(Lcom/deepalhome/launcher/window/WindowsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->endDrag()V

    return-void
.end method

.method public static final synthetic access$getDismissDragActive$p(Lcom/deepalhome/launcher/window/WindowsView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragActive:Z

    return p0
.end method

.method public static final synthetic access$getDismissDragSlop(Lcom/deepalhome/launcher/window/WindowsView;)I
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->getDismissDragSlop()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getDismissDragStartTranslation$p(Lcom/deepalhome/launcher/window/WindowsView;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartTranslation:F

    return p0
.end method

.method public static final synthetic access$getDismissDragStartX$p(Lcom/deepalhome/launcher/window/WindowsView;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartX:F

    return p0
.end method

.method public static final synthetic access$getDismissDragStartY$p(Lcom/deepalhome/launcher/window/WindowsView;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartY:F

    return p0
.end method

.method public static final synthetic access$getDismissDragTracking$p(Lcom/deepalhome/launcher/window/WindowsView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragTracking:Z

    return p0
.end method

.method public static final synthetic access$getDismissDragVelocityTracker$p(Lcom/deepalhome/launcher/window/WindowsView;)Landroid/view/VelocityTracker;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method public static final synthetic access$getDismissThreshold(Lcom/deepalhome/launcher/window/WindowsView;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->getDismissThreshold(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getWindows$p(Lcom/deepalhome/launcher/window/WindowsView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$handleSlipAction(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->handleSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$resetDismissDrag(Lcom/deepalhome/launcher/window/WindowsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->resetDismissDrag()V

    return-void
.end method

.method public static final synthetic access$setDismissDragActive$p(Lcom/deepalhome/launcher/window/WindowsView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragActive:Z

    return-void
.end method

.method public static final synthetic access$setDismissDragMultiTouch$p(Lcom/deepalhome/launcher/window/WindowsView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragMultiTouch:Z

    return-void
.end method

.method public static final synthetic access$setDismissDragStartTranslation$p(Lcom/deepalhome/launcher/window/WindowsView;F)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartTranslation:F

    return-void
.end method

.method public static final synthetic access$setDismissDragStartX$p(Lcom/deepalhome/launcher/window/WindowsView;F)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartX:F

    return-void
.end method

.method public static final synthetic access$setDismissDragStartY$p(Lcom/deepalhome/launcher/window/WindowsView;F)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartY:F

    return-void
.end method

.method public static final synthetic access$setDismissDragTracking$p(Lcom/deepalhome/launcher/window/WindowsView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragTracking:Z

    return-void
.end method

.method public static final synthetic access$setDismissDragVelocityTracker$p(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/VelocityTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public static final synthetic access$shouldFinishDismiss(Lcom/deepalhome/launcher/window/WindowsView;FZ)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->shouldFinishDismiss(FZ)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$startDrag(Lcom/deepalhome/launcher/window/WindowsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->startDrag()V

    return-void
.end method

.method public static final synthetic access$updateBarInsets(Lcom/deepalhome/launcher/window/WindowsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->updateBarInsets()V

    return-void
.end method

.method private final allWindowsAreMin()Z
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/deepalhome/launcher/window/WindowsView;->minWindowWidth:I

    if-gt v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return v2
.end method

.method private final animateScroll(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    const-string v1, "scrollX"

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c001e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;-><init>(Lcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private final bindConfiguredWindows()V
    .locals 7

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getWindowApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/window/WindowInfo;

    iget-object v2, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/window/WindowInfo;->getPosition()I

    move-result v3

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/window/WindowView;

    if-eqz v2, :cond_0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/window/WindowsView;->getWindowSize(Lcom/deepalhome/launcher/window/WindowInfo;)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/window/WindowInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v4}, Lcom/deepalhome/launcher/util/AppUtil;->getAppWindow(Landroid/content/Context;Ljava/lang/String;)Lcom/deepalhome/launcher/window/BaseAppWindow;

    move-result-object v3

    instance-of v4, v3, Lcom/deepalhome/launcher/pip/PipAppWindow;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/deepalhome/launcher/pip/PipAppWindow;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/window/WindowInfo;->getPosition()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/deepalhome/launcher/pip/PipAppWindow;->setCardPosition(I)V

    :cond_1
    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/window/WindowView;->bindAppWindow(Lcom/deepalhome/launcher/window/BaseAppWindow;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final buildCardTypeOptions(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getWindowApps()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/window/WindowInfo;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/window/WindowInfo;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/deepalhome/launcher/window/WindowInfo;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/deepalhome/launcher/window/WindowInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/launcher/window/WindowInfo;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/window/WindowInfo;->getPosition()I

    move-result v3

    if-eq v3, p1, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/window/WindowInfo;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/window/WindowInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "CarS05Info"

    goto :goto_3

    :cond_6
    const-string p1, "CarInfo"

    :goto_3
    const-string v1, "Music card"

    const-string v2, "Vehicle information"

    const-string v3, "Map card"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAP"

    const-string v3, "Music"

    const-string v4, "PipWindow"

    filled-new-array {p1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_4
    const/4 v5, 0x3

    if-ge v3, v5, :cond_9

    aget-object v5, p1, v3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    new-instance v7, Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;

    aget-object v8, v1, v3

    invoke-direct {v7, v8, v5, v6}, Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    return-object v2

    :cond_a
    :goto_5
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method private final buildCardTypePopupContent(ILjava/util/List;)Landroid/view/View;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f06038c

    goto :goto_0

    :cond_0
    const v3, 0x7f06038b

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060397

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f060026

    goto :goto_1

    :cond_1
    const v5, 0x7f060023

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06001a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    const/16 v6, 0xf2

    invoke-static {v4, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07009e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iget v8, v0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v6, v8

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070097

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iget v10, v0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v8, v10

    invoke-static {v8}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iget v11, v0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v7, v11

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v11

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x10

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v13

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v15, 0x1

    if-ltz v15, :cond_5

    move-object/from16 v13, v16

    check-cast v13, Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v9, v13, Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;->label:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v9, v13, Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;->isCurrent:Z

    move/from16 v19, v2

    if-eqz v9, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    move/from16 v20, v3

    iget v3, v0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v3, v2

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v18, v5

    const v5, 0x7f070097

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget v5, v0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v9, :cond_3

    move/from16 v3, v18

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7, v11, v7, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda1;

    move/from16 v3, p1

    const/4 v5, 0x1

    invoke-direct {v2, v0, v13, v3, v5}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v15, :cond_4

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_4
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v12, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v5

    move/from16 v15, v17

    move/from16 v5, v18

    move/from16 v2, v19

    move/from16 v3, v20

    const v9, 0x7f070097

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_6
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0700c0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget v0, v0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v2, v0

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6, v8, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v12, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private static final buildCardTypePopupContent$lambda$22$lambda$21$lambda$19$lambda$18(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;ILandroid/view/View;)V
    .locals 2

    const-string p3, "this$0"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "$option"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->dismissTopPopupWindows()V

    iget-boolean p0, p1, Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;->isCurrent:Z

    if-nez p0, :cond_6

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/deepalhome/launcher/window/WindowsView$CardTypeOption;->packageName:Ljava/lang/String;

    const-string p1, "newPackageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getWindowApps()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/launcher/window/WindowInfo;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/window/WindowInfo;->getPosition()I

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/deepalhome/launcher/window/WindowInfo;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/deepalhome/launcher/window/WindowInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/window/WindowInfo;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/window/WindowInfo;->getPosition()I

    move-result v1

    if-ne v1, p2, :cond_4

    new-instance v1, Lcom/deepalhome/launcher/window/WindowInfo;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/window/WindowInfo;->getSize()I

    move-result v0

    invoke-direct {v1, p2, p0, v0}, Lcom/deepalhome/launcher/window/WindowInfo;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setWindowApps(Ljava/util/ArrayList;)V

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/window/WindowsView;->rebindWindow(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private final buildMapActionPopupContent(Lcom/deepalhome/launcher/map/MapAppWindow;)Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06038c

    goto :goto_0

    :cond_0
    const v1, 0x7f06038b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f060026

    goto :goto_1

    :cond_1
    const v1, 0x7f060023

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/16 v1, 0xf2

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070097

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget v6, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v3, v6

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v7

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v11, Lcom/deepalhome/launcher/window/WindowsView$buildMapActionPopupContent$actionContainer$1$1;

    invoke-direct {v11, p0, p1}, Lcom/deepalhome/launcher/window/WindowsView$buildMapActionPopupContent$actionContainer$1$1;-><init>(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/map/MapAppWindow;)V

    const-string v3, "Switch map"

    move-object v2, p0

    move v5, v6

    move v6, v7

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/window/WindowsView;->createTopPopupActionTextView(Ljava/lang/String;IIILkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v3, p0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1, v8, v1, v8}, Landroid/view/View;->setPadding(IIII)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v9, p0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method private final native buildPipActionPopupContent(Lcom/deepalhome/launcher/pip/PipAppWindow;)Landroid/view/View;
.end method

.method private final calculateWindowWidths()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070375

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->spaceWidth:I

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    iget v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->spaceWidth:I

    mul-int/lit8 v2, v1, 0x4

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/deepalhome/launcher/window/WindowsView;->minWindowWidth:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    iput v3, p0, Lcom/deepalhome/launcher/window/WindowsView;->medWindowWidth:I

    mul-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/deepalhome/launcher/window/WindowsView;->maxWindowWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->pageOffset:I

    return-void
.end method

.method private final canStartDismissDrag(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    return p0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    return p0

    :cond_2
    sget-boolean p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    if-eqz p1, :cond_3

    return p0

    :cond_3
    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isRealCar()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isEZ6()Z

    move-result p1

    if-nez p1, :cond_4

    return p0

    :cond_4
    return v0
.end method

.method private final computeDismissDragVelocityY()F
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->getDismissDragMaxFlingVelocity()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method private final computeMaxDownwardVelocityY(Landroid/view/MotionEvent;Z)F
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x3e8

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->getDismissDragMaxFlingVelocity()F

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_2

    move v1, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static synthetic computeMaxDownwardVelocityY$default(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/MotionEvent;ZILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->computeMaxDownwardVelocityY(Landroid/view/MotionEvent;Z)F

    move-result p0

    return p0
.end method

.method private final configureDragContainer()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->dragBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v3}, Lcom/deepalhome/launcher/view/DragLinearLayout;->setViewDraggable(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;-><init>(Lcom/deepalhome/launcher/window/WindowsView;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->setCallback(Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;)V

    return-void
.end method

.method private final createTopPopupActionTextView(Ljava/lang/String;IIILkotlin/jvm/functions/Function0;)Landroid/widget/TextView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Landroid/widget/TextView;"
        }
    .end annotation

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    iget p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr p2, p1

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupScale:F

    mul-float/2addr v1, p0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p3, p4, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;

    const/4 p1, 0x0

    invoke-direct {p0, p5, p1}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final createTopPopupActionTextView$lambda$34$lambda$33(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    const-string p1, "$action"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final dismissTopPopupWindows()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->pipActionPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iput-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->pipActionPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->mapActionPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    iput-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->mapActionPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->popupDismissCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    iput-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->popupDismissCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final endDrag()V
    .locals 3

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->dismissTopPopupWindows()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/window/WindowView;->endDrag()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final ensureInitialized()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->initialized:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->initWindows()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->configureDragContainer()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->calculateWindowWidths()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->bindConfiguredWindows()V

    iget v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->baseBottomPadding:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070374

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->baseBottomPadding:I

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->installWindowInsetsListener()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->updateBarInsets()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->setupDragHandles()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->setupCardTypeEntryActions()V

    return-void
.end method

.method private final getDismissDragMaxFlingVelocity()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragMaxFlingVelocity$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getDismissDragMinFlingVelocity()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragMinFlingVelocity$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getDismissDragSlop()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragSlop$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getDismissThreshold(F)F
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    return p1
.end method

.method private final getRawCenterY(Landroid/view/MotionEvent;Z)F
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr p0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-eq v0, v4, :cond_2

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v4, p0

    add-float/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-lez v2, :cond_4

    int-to-float p0, v2

    div-float/2addr v3, p0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    :goto_1
    return v3
.end method

.method public static synthetic getRawCenterY$default(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/MotionEvent;ZILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->getRawCenterY(Landroid/view/MotionEvent;Z)F

    move-result p0

    return p0
.end method

.method private final getThreeFingerMinFlingVelocity()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->threeFingerMinFlingVelocity$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getWindowSize(Lcom/deepalhome/launcher/window/WindowInfo;)I
    .locals 1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/window/WindowInfo;->getSize()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->minWindowWidth:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->maxWindowWidth:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->medWindowWidth:I

    :goto_0
    return p0
.end method

.method private final handleSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Z)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/window/WindowsView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/window/WindowsView;->tryDismiss(Z)Z

    move-result p0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->trySlipRight()Z

    move-result p0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->trySlipLeft()Z

    move-result p0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final initWindows()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->window0:Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->window1:Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->window2:Lcom/deepalhome/launcher/window/WindowView;

    filled-new-array {v1, v2, v3}, [Lcom/deepalhome/launcher/window/WindowView;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_0

    check-cast v1, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/window/WindowView;->setWindowPosition(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method private final installWindowInsetsListener()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windowInsetsListenerInstalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windowInsetsListenerInstalled:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    new-instance v1, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method private static final installWindowInsetsListener$lambda$0(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "insets"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->navBarInsetBottom:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->navBarInsetBottom:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->updateBarInsets()V

    :cond_0
    return-object p2
.end method

.method private final isTouchInsidePipWindow(FF)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    instance-of v1, p0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/window/WindowView;->getBoundAppWindow()Lcom/deepalhome/launcher/window/BaseAppWindow;

    move-result-object v1

    instance-of v3, v1, Lcom/deepalhome/launcher/pip/PipAppWindow;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/deepalhome/launcher/pip/PipAppWindow;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v2

    int-to-float v4, v3

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    aget v4, v0, v3

    int-to-float v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    move v2, v3

    :cond_5
    :goto_2
    return v2
.end method

.method private final resetDismissDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragTracking:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragActive:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragMultiTouch:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartX:F

    iput v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartY:F

    iput v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartTranslation:F

    iput v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissPeakDownwardVelocityY:F

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private final resolveTargetSize(I)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair;"
        }
    .end annotation

    iget v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->medWindowWidth:I

    iget v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->minWindowWidth:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/deepalhome/launcher/window/WindowsView;->maxWindowWidth:I

    const/4 v3, 0x2

    div-int/2addr v1, v3

    sub-int/2addr v2, v1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->minWindowWidth:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-gt p1, v2, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->medWindowWidth:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->maxWindowWidth:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private final setFinalWindowSize(ILcom/deepalhome/launcher/window/WindowView;)V
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/window/WindowsView;->resolveTargetSize(I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v2, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getWindowApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/window/WindowInfo;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/window/WindowInfo;->getPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3, v1}, Lcom/deepalhome/launcher/window/WindowInfo;->setSize(I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getWindowApps()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setWindowApps(Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    iput v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dragStartX:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->endDrag()V

    return-void

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->endDrag()V

    iput v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dragStartX:I

    return-void
.end method

.method private final setupCardTypeEntryActions()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->dragBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/16 v4, 0x14

    invoke-direct {v3, v4, p0, v1}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v1}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final setupCardTypeEntryActions$lambda$11$lambda$10(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowView;Landroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "$windowView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->showCardTypePicker(Lcom/deepalhome/launcher/window/WindowView;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final setupCardTypeEntryActions$lambda$11$lambda$9(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowView;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "$windowView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->showCardTypePicker(Lcom/deepalhome/launcher/window/WindowView;)V

    return-void
.end method

.method private final setupDragHandle(Landroid/view/View;I)V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final setupDragHandle$lambda$39(Lcom/deepalhome/launcher/window/WindowsView;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string p2, "this$0"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/window/WindowView;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p3, 0x3

    if-eq v0, p3, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p2, p1}, Lcom/deepalhome/launcher/window/WindowsView;->updateWindowWidth(Lcom/deepalhome/launcher/window/WindowView;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->setFinalWindowSize(ILcom/deepalhome/launcher/window/WindowView;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dragStartX:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->startDrag()V

    :goto_0
    return v1
.end method

.method private final setupDragHandles()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnStart:Landroid/widget/FrameLayout;

    const-string v1, "dragBtnStart"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/window/WindowsView;->setupDragHandle(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnCenter:Landroid/widget/FrameLayout;

    const-string v1, "dragBtnCenter"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/window/WindowsView;->setupDragHandle(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnEnd:Landroid/widget/FrameLayout;

    const-string v1, "dragBtnEnd"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/window/WindowsView;->setupDragHandle(Landroid/view/View;I)V

    return-void
.end method

.method private final shouldFinishDismiss(FZ)Z
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getWindowHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getCurrentTranslationY()F

    move-result v2

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/window/WindowsView;->getDismissThreshold(F)F

    move-result v0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->getThreeFingerMinFlingVelocity()F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->getDismissDragMinFlingVelocity()F

    move-result p0

    :goto_0
    cmpl-float p2, v2, v0

    const/4 v0, 0x1

    if-lez p2, :cond_2

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p0, p2, p0

    if-lez p0, :cond_3

    cmpl-float p0, p1, v1

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v3
.end method

.method public static synthetic shouldFinishDismiss$default(Lcom/deepalhome/launcher/window/WindowsView;FZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/window/WindowsView;->shouldFinishDismiss(FZ)Z

    move-result p0

    return p0
.end method

.method private static final showCardTypePicker$lambda$13$lambda$12(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$this_apply"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->popupDismissCallback:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->popupDismissCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final showMapActionPopup(IILcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 4

    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/window/WindowsView;->buildMapActionPopupContent(Lcom/deepalhome/launcher/map/MapAppWindow;)Landroid/view/View;

    move-result-object p3

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {v0, p3, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700b7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    new-instance v1, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v0, v3}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;-><init>(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->mapActionPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p3, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    if-gez v3, :cond_0

    move v3, v2

    :cond_0
    invoke-static {p1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    if-gez v1, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p2, v2, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-virtual {v0, p0, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private static final showMapActionPopup$lambda$38$lambda$37(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$this_apply"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->mapActionPopupWindow:Landroid/widget/PopupWindow;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->mapActionPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method private final native showPipActionPopup(IILcom/deepalhome/launcher/pip/PipAppWindow;)V
.end method

.method private static final showPipActionPopup$lambda$36$lambda$35(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$this_apply"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->pipActionPopupWindow:Landroid/widget/PopupWindow;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->pipActionPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method private final slipToLeft()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->pageOffset:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/deepalhome/launcher/window/WindowsView;->animateScroll(II)V

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnCenter:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnEnd:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final slipToRight()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->pageOffset:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/window/WindowsView;->animateScroll(II)V

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnEnd:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnCenter:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final startDrag()V
    .locals 3

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->dismissTopPopupWindows()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/window/WindowView;->startDrag()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final tryDismiss(Z)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isRealCar()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->dismiss(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private final trySlipLeft()Z
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->spaceWidth:I

    iget-object v3, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lt v3, v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->allWindowsAreMin()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->slipToLeft()V

    return v4

    :cond_2
    return v1
.end method

.method private final trySlipRight()Z
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->pageOffset:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->slipToRight()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final tryStartThreeFingerDismissDrag(Landroid/view/MotionEvent;)V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragMultiTouch:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, p1, v2, v3, v1}, Lcom/deepalhome/launcher/window/WindowsView;->getRawCenterY$default(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/MotionEvent;ZILjava/lang/Object;)F

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartY:F

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->beginDismissDrag()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragActive:Z

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartTranslation:F

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->resetDismissDrag()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final updateBarInsets()V
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result v0

    const-string v1, "getContext(...)"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->getTopInsetPx(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070374

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarNavigationBarVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->navBarInsetBottom:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/deepalhome/launcher/window/WindowsView;->baseBottomPadding:I

    add-int/2addr v5, v1

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->extraBottomInset:I

    add-int/2addr v5, p0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private final updateWindowWidth(Lcom/deepalhome/launcher/window/WindowView;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->dragStartX:I

    sub-int/2addr v0, p2

    iget p2, p0, Lcom/deepalhome/launcher/window/WindowsView;->minWindowWidth:I

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->maxWindowWidth:I

    invoke-static {v0, p2, p0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final beginBlurUpdate()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const-string v0, "ev"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/deepalhome/launcher/window/WindowsView;->isTouchInsidePipWindow(FF)Z

    move-result v5

    iput-boolean v5, p0, Lcom/deepalhome/launcher/window/WindowsView;->singleFingerGestureBlockedByPip:Z

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    iput-boolean v3, p0, Lcom/deepalhome/launcher/window/WindowsView;->singleFingerGestureBlockedByPip:Z

    :cond_2
    :goto_0
    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    iget-boolean v6, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragMultiTouch:Z

    if-eqz v6, :cond_10

    if-lt v1, v4, :cond_10

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v0, v4, :cond_a

    if-eq v0, v8, :cond_7

    if-eq v0, v5, :cond_a

    if-eq v0, v2, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragActive:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_5
    invoke-static {p0, p1, v3, v8, v7}, Lcom/deepalhome/launcher/window/WindowsView;->computeMaxDownwardVelocityY$default(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/MotionEvent;ZILjava/lang/Object;)F

    move-result v1

    iget v6, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissPeakDownwardVelocityY:F

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissPeakDownwardVelocityY:F

    invoke-direct {p0, p1, v4}, Lcom/deepalhome/launcher/window/WindowsView;->getRawCenterY(Landroid/view/MotionEvent;Z)F

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartY:F

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getCurrentTranslationY()F

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartTranslation:F

    goto/16 :goto_2

    :cond_6
    iget-boolean v6, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragMultiTouch:Z

    if-nez v6, :cond_f

    if-ne v1, v5, :cond_f

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->tryStartThreeFingerDismissDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_7
    iget-boolean v9, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragMultiTouch:Z

    if-nez v9, :cond_8

    if-ne v1, v5, :cond_8

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->tryStartThreeFingerDismissDrag(Landroid/view/MotionEvent;)V

    :cond_8
    iget-boolean v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragActive:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    invoke-static {p0, p1, v3, v8, v7}, Lcom/deepalhome/launcher/window/WindowsView;->computeMaxDownwardVelocityY$default(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/MotionEvent;ZILjava/lang/Object;)F

    move-result v1

    iget v9, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissPeakDownwardVelocityY:F

    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissPeakDownwardVelocityY:F

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getWindowHeight()I

    move-result v1

    if-lez v1, :cond_f

    invoke-static {p0, p1, v3, v8, v7}, Lcom/deepalhome/launcher/window/WindowsView;->getRawCenterY$default(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/MotionEvent;ZILjava/lang/Object;)F

    move-result v7

    iget v8, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartY:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragStartTranslation:F

    add-float/2addr v8, v7

    int-to-float v1, v1

    invoke-static {v8, v6, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v1

    invoke-static {v1}, Lcom/deepalhome/launcher/window/AppWindowsManager;->updateDragTranslation(F)V

    goto :goto_2

    :cond_a
    iget-boolean v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragActive:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_b
    if-ne v0, v5, :cond_d

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getWindowHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getCurrentTranslationY()F

    move-result v7

    cmpl-float v6, v1, v6

    if-lez v6, :cond_c

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/window/WindowsView;->getDismissThreshold(F)F

    move-result v1

    cmpl-float v1, v7, v1

    if-lez v1, :cond_c

    move v1, v4

    goto :goto_1

    :cond_c
    move v1, v3

    goto :goto_1

    :cond_d
    invoke-static {p0, p1, v3, v8, v7}, Lcom/deepalhome/launcher/window/WindowsView;->computeMaxDownwardVelocityY$default(Lcom/deepalhome/launcher/window/WindowsView;Landroid/view/MotionEvent;ZILjava/lang/Object;)F

    move-result v1

    iget v6, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissPeakDownwardVelocityY:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {p0, v1, v3, v8, v7}, Lcom/deepalhome/launcher/window/WindowsView;->shouldFinishDismiss$default(Lcom/deepalhome/launcher/window/WindowsView;FZILjava/lang/Object;)Z

    move-result v1

    :goto_1
    sget-object v6, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    xor-int/2addr v1, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/window/AppWindowsManager;->finishDrag(Z)V

    :cond_e
    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->resetDismissDrag()V

    :cond_f
    :goto_2
    iget-boolean v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragActive:Z

    if-eqz v1, :cond_10

    return v4

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v4, :cond_11

    if-ne v0, v2, :cond_12

    :cond_11
    iput-boolean v4, p0, Lcom/deepalhome/launcher/window/WindowsView;->isMultiTouchActive:Z

    :cond_12
    iget-boolean v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->isMultiTouchActive:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragActive:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->windowContainerGestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/util/GestureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_13
    if-eq v0, v4, :cond_14

    if-eq v0, v5, :cond_14

    goto :goto_3

    :cond_14
    iput-boolean v3, p0, Lcom/deepalhome/launcher/window/WindowsView;->isMultiTouchActive:Z

    :cond_15
    :goto_3
    iget-boolean v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->dismissDragActive:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->isMultiTouchActive:Z

    if-nez v1, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v4, :cond_16

    iget-boolean v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->singleFingerGestureBlockedByPip:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->windowContainerGestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/util/GestureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_16
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eq v0, v4, :cond_17

    if-eq v0, v5, :cond_17

    goto :goto_4

    :cond_17
    iput-boolean v3, p0, Lcom/deepalhome/launcher/window/WindowsView;->singleFingerGestureBlockedByPip:Z

    :goto_4
    return p1
.end method

.method public final ensureReadyForShow()Z
    .locals 4

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->ensureInitialized()V

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/window/WindowView;->hasBoundAppWindow()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/window/WindowView;->isContentLayoutReady()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_5
    move v1, v2

    :cond_6
    :goto_1
    if-nez v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    return v1

    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->bindConfiguredWindows()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return v2
.end method

.method public final finishBlurUpdate()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v3, "blurView"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0126

    return p0
.end method

.method public final getPopupDismissCallback()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->popupDismissCallback:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->ensureInitialized()V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->barVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->barVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->updateBarInsets()V

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    sget v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->extraBottomInsetPx:I

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/window/WindowsView;->setExtraBottomInset(I)V

    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/appcompat/widget/SearchView$4;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/SearchView$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->dismissTopPopupWindows()V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->barVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->removeOnVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->barVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->removeOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->resetDismissDrag()V

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-ne v0, p0, :cond_0

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->cancelViewAnimation(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    sput-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    sput-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isDragging:Z

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInit()V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->ensureInitialized()V

    return-void
.end method

.method public final prepareForShowLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->ensureInitialized()V

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/window/WindowView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/window/WindowView;->requestContentLayoutSync()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final rebindWindow(I)V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getWindowApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/window/WindowInfo;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/window/WindowInfo;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/deepalhome/launcher/window/WindowInfo;

    if-nez v1, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/window/WindowInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/util/AppUtil;->getAppWindow(Landroid/content/Context;Ljava/lang/String;)Lcom/deepalhome/launcher/window/BaseAppWindow;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/pip/PipAppWindow;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/launcher/pip/PipAppWindow;

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/pip/PipAppWindow;->setCardPosition(I)V

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/window/WindowView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/window/WindowView;->bindAppWindow(Lcom/deepalhome/launcher/window/BaseAppWindow;)V

    :cond_4
    return-void
.end method

.method public final setBlurRootView(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v2, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v2}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v1, p1, v2}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v0, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v2, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v2}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v0, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :goto_1
    int-to-long v0, p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_1

    :goto_2
    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    return-void
.end method

.method public final setExtraBottomInset(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->extraBottomInset:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->extraBottomInset:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->updateBarInsets()V

    return-void
.end method

.method public final setPopupDismissCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView;->popupDismissCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final showCardTypePicker(I)V
    .locals 11

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/window/WindowView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->buildCardTypeOptions(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/window/WindowsView;->dismissTopPopupWindows()V

    invoke-direct {p0, p1, v1}, Lcom/deepalhome/launcher/window/WindowsView;->buildCardTypePopupContent(ILjava/util/List;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0700b7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    new-instance v2, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;

    const/4 v5, 0x2

    invoke-direct {v2, p0, v1, v5}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;-><init>(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView;->cardTypePopupWindow:Landroid/widget/PopupWindow;

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v5, 0x2

    new-array v6, v5, [I

    new-array v7, v5, [I

    new-array v8, v5, [I

    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->dragBtn:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v9, v7, v4

    aget v10, v6, v4

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v10, v2

    div-int/2addr v10, v5

    add-int/2addr v10, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v9, v2

    if-gez v9, :cond_2

    move v9, v4

    :cond_2
    invoke-static {v10, v4, v9}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v2

    aget v8, v8, v3

    aget v3, v6, v3

    sub-int/2addr v8, v3

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/WindowViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->dragBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070095

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, p1

    if-gez v3, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v8, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v3

    invoke-virtual {v1, p0, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/window/WindowView;->getBoundAppWindow()Lcom/deepalhome/launcher/window/BaseAppWindow;

    move-result-object v1

    instance-of v2, v1, Lcom/deepalhome/launcher/pip/PipAppWindow;

    if-eqz v2, :cond_4

    aget v2, v7, v4

    aget v4, v6, v4

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v5

    add-int/2addr v0, v2

    add-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v3

    check-cast v1, Lcom/deepalhome/launcher/pip/PipAppWindow;

    invoke-direct {p0, v0, p1, v1}, Lcom/deepalhome/launcher/window/WindowsView;->showPipActionPopup(IILcom/deepalhome/launcher/pip/PipAppWindow;)V

    goto :goto_0

    :cond_4
    instance-of v2, v1, Lcom/deepalhome/launcher/map/MapAppWindow;

    if-eqz v2, :cond_5

    aget v2, v7, v4

    aget v4, v6, v4

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v5

    add-int/2addr v0, v2

    add-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v3

    check-cast v1, Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-direct {p0, v0, p1, v1}, Lcom/deepalhome/launcher/window/WindowsView;->showMapActionPopup(IILcom/deepalhome/launcher/map/MapAppWindow;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final showCardTypePicker(Lcom/deepalhome/launcher/window/WindowView;)V
    .locals 1

    const-string v0, "windowView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView;->windows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->showCardTypePicker(I)V

    return-void
.end method

.method public final updateBlurAlpha(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public updateUIMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnStartView:Landroid/view/View;

    const v0, 0x7f080278

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnCenterView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnEndView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnStartView:Landroid/view/View;

    const v0, 0x7f080277

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnCenterView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->dragBtnEndView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    :goto_0
    return-void
.end method
