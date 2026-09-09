.class public final Lcom/deepalhome/launcher/window/AppWindowsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

.field public static extraBottomInsetPx:I

.field public static isAnimating:Z

.field public static isDragging:Z

.field public static final onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static pause:Z

.field public static shouldShow:Z

.field public static showPending:Z

.field public static windowsView:Lcom/deepalhome/launcher/window/WindowsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDismissDrag()Ljava/lang/Float;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->cancelViewAnimation(Landroid/view/View;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    sput-boolean v2, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/deepalhome/launcher/window/AppWindowsManager;->isDragging:Z

    invoke-virtual {v0}, Lcom/deepalhome/launcher/window/WindowsView;->beginBlurUpdate()V

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->notifyDismissStart()V

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static cancelViewAnimation(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public static completeDismiss(Lcom/deepalhome/launcher/window/WindowsView;)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowsView;->finishBlurUpdate()V

    sput-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;

    invoke-interface {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;->onWindowsDismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static dismiss(Z)V
    .locals 4

    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/deepalhome/launcher/window/AppWindowsManager;->finishDrag(Z)V

    return-void

    :cond_0
    sput-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    sput-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->cancelViewAnimation(Landroid/view/View;)V

    if-nez p0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    sput-boolean p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    invoke-virtual {v0}, Lcom/deepalhome/launcher/window/WindowsView;->beginBlurUpdate()V

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->notifyDismissStart()V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;-><init>(FLcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;-><init>(Lcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->notifyDismissStart()V

    :cond_4
    invoke-static {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->completeDismiss(Lcom/deepalhome/launcher/window/WindowsView;)V

    return-void
.end method

.method public static finishDrag(Z)V
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isDragging:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isDragging:Z

    invoke-static {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->cancelViewAnimation(Landroid/view/View;)V

    sput-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    if-eqz p0, :cond_3

    sput-boolean v3, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    sput-boolean v3, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/deepalhome/launcher/window/WindowsView;->beginBlurUpdate()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;-><init>(FLcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;-><init>(Lcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_3
    sput-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    sput-boolean v3, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->notifyDismissStart()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/window/WindowsView;->beginBlurUpdate()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;-><init>(FLcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;-><init>(Lcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public static getCurrentTranslationY()F
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getWindowHeight()I
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShowing()Z
    .locals 1

    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShown()Z
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static notifyDismissStart()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;

    invoke-interface {v1}, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;->onWindowsDismissStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static performShow(Lcom/deepalhome/launcher/window/WindowsView;)V
    .locals 4

    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->cancelViewAnimation(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowsView;->prepareForShowLayout()V

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowsView;->ensureReadyForShow()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    sput-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    new-instance v0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    sput-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowsView;->beginBlurUpdate()V

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;

    invoke-interface {v1}, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;->onWindowsShow()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda0;-><init>(FLcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;-><init>(Lcom/deepalhome/launcher/window/WindowsView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static setExtraBottomInset(I)V
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sput p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->extraBottomInsetPx:I

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/window/WindowsView;->setExtraBottomInset(I)V

    :cond_1
    return-void
.end method

.method public static showWindow()V
    .locals 2

    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/deepalhome/launcher/window/AppWindowsManager;->finishDrag(Z)V

    return-void

    :cond_0
    sput-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->performShow(Lcom/deepalhome/launcher/window/WindowsView;)V

    return-void
.end method

.method public static startBlur(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/window/WindowsView;->setBlurRootView(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v0, p0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateDragTranslation(F)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isDragging:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_2

    return-void

    :cond_2
    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr p0, v1

    sub-float/2addr v2, p0

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    return-void
.end method
