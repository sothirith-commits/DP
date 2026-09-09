.class public abstract Lcom/petterp/floatingx/view/FxBasicContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/petterp/floatingx/view/IFxInternalHelper;


# instance fields
.field private _childView:Landroid/view/View;

.field private _viewHolder:Lcom/petterp/floatingx/view/FxViewHolder;

.field private final animateHelper:Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;

.field private final helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

.field private final helpers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;",
            ">;"
        }
    .end annotation
.end field

.field private isInitLayout:Z

.field private final locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

.field private final touchHelper:Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;


# direct methods
.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;)V
    .locals 7

    const-string v0, "helper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "context"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/petterp/floatingx/view/FxBasicContainerView;-><init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "context"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->isInitLayout:Z

    new-instance p2, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;

    invoke-direct {p2}, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;-><init>()V

    iput-object p2, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->touchHelper:Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;

    new-instance p3, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;

    invoke-direct {p3}, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;-><init>()V

    iput-object p3, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->animateHelper:Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;

    new-instance v0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    invoke-direct {v0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;-><init>()V

    iput-object v0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->helpers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/petterp/floatingx/view/FxBasicContainerView;-><init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final inflateLayoutId()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->layoutId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v0

    const-string v2, "fxView -> init, way:[layoutId]"

    invoke-virtual {v0, v2}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v2

    iget v2, v2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->layoutId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lokhttp3/logging/Utf8Kt;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final inflateLayoutView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic internalMoveToXY$floatingx_release$default(Lcom/petterp/floatingx/view/FxBasicContainerView;FFZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/petterp/floatingx/view/FxBasicContainerView;->internalMoveToXY$floatingx_release(FFZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: internalMoveToXY"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final safeMoveToXY(FFZ)V
    .locals 2

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeX(FZ)F

    move-result p1

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    invoke-virtual {v0, p2, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeY(FZ)F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/petterp/floatingx/view/FxBasicContainerView;->internalMoveToXY$floatingx_release(FFZ)V

    return-void
.end method


# virtual methods
.method public checkPointerDownTouch(ILandroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/petterp/floatingx/view/FxBasicContainerView;->checkPointerDownTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public checkPointerDownTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "view"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "event"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    aget v2, v1, p0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    int-to-float v2, v4

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    int-to-float v0, v1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    move p0, v3

    :cond_0
    return p0
.end method

.method public getChildView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->_childView:Landroid/view/View;

    return-object p0
.end method

.method public getContainerView()Landroid/widget/FrameLayout;
    .locals 0

    return-object p0
.end method

.method public getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    return-object p0
.end method

.method public final getLocationHelper$floatingx_release()Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    return-object p0
.end method

.method public getViewHolder()Lcom/petterp/floatingx/view/FxViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->_viewHolder:Lcom/petterp/floatingx/view/FxViewHolder;

    return-object p0
.end method

.method public initView()V
    .locals 2

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->helpers:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;

    invoke-virtual {v1, p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->initConfig(Lcom/petterp/floatingx/view/FxBasicContainerView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final installChildView()Landroid/view/View;
    .locals 3

    invoke-direct {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->inflateLayoutView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->inflateLayoutId()Landroid/view/View;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->_childView:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/petterp/floatingx/view/FxViewHolder;

    invoke-direct {v1, v0}, Lcom/petterp/floatingx/view/FxViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->_viewHolder:Lcom/petterp/floatingx/view/FxViewHolder;

    invoke-virtual {p0, v1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->onInitChildViewEnd(Lcom/petterp/floatingx/view/FxViewHolder;)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxViewLifecycles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/petterp/floatingx/listener/IFxViewLifecycle;

    iget-object v2, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->_viewHolder:Lcom/petterp/floatingx/view/FxViewHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/petterp/floatingx/listener/IFxViewLifecycle;->initView(Lcom/petterp/floatingx/view/FxViewHolder;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->_childView:Landroid/view/View;

    return-object p0
.end method

.method public final internalMoveToXY$floatingx_release(FFZ)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    cmpg-float v2, v0, p1

    if-nez v2, :cond_0

    cmpg-float v2, v1, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->animateHelper:Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;

    iget-object v2, p3, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    :goto_0
    iget-object v4, p3, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v3

    :goto_1
    cmpg-float v4, v2, p1

    if-nez v4, :cond_3

    cmpg-float v4, v3, p2

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iput v2, p3, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->startX:F

    iput v3, p3, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->startY:F

    iput p1, p3, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->endX:F

    iput p2, p3, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->endY:F

    iget-object v2, p3, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, v4, p3}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v2, p3, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    iget-object v2, p3, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    iget-object v2, p3, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    :goto_2
    iget-object p3, p3, Lcom/petterp/floatingx/view/helper/FxViewAnimationHelper;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez p3, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/petterp/floatingx/view/FxBasicContainerView;->updateXY(FF)V

    :goto_3
    iget-object p3, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    invoke-virtual {p3}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v2

    iget-object v2, v2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

    if-eqz v2, :cond_b

    invoke-virtual {p3}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v2

    iget-boolean v2, v2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableSaveDirection:Z

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p3}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v2

    iget-object v2, v2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, p1, p2}, Lcom/petterp/floatingx/listener/IFxConfigStorage;->update(FF)V

    invoke-virtual {p3}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveLocation -> x:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "fxView -> moveToXY: start("

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "),end("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public invokeClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final isInitLayout$floatingx_release()Z
    .locals 0

    iget-boolean p0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->isInitLayout:Z

    return p0
.end method

.method public moveLocation(FFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/petterp/floatingx/view/FxBasicContainerView;->safeMoveToXY(FFZ)V

    return-void
.end method

.method public moveLocationByVector(FFZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr p1, p2

    invoke-direct {p0, v0, p1, p3}, Lcom/petterp/floatingx/view/FxBasicContainerView;->safeMoveToXY(FFZ)V

    return-void
.end method

.method public moveToEdge()V
    .locals 4

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v3

    iget-boolean v3, v3, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeAdsorption:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeRebound:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->isNearestLeft(F)Z

    move-result v1

    invoke-virtual {v0, v2}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->isNearestTop(F)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getAdsorbDirectionLocation(ZZ)Lkotlin/Pair;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/petterp/floatingx/view/FxBasicContainerView;->moveLocation(FFZ)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxViewLifecycles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/petterp/floatingx/listener/IFxViewLifecycle;

    invoke-interface {v1, p0}, Lcom/petterp/floatingx/listener/IFxViewLifecycle;->attach(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->helpers:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;

    invoke-virtual {v0, p1}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxViewLifecycles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/petterp/floatingx/listener/IFxViewLifecycle;

    invoke-interface {v1, p0}, Lcom/petterp/floatingx/listener/IFxViewLifecycle;->detached(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInitChildViewEnd(Lcom/petterp/floatingx/view/FxViewHolder;)V
    .locals 0

    const-string p0, "vh"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p0}, Lcom/petterp/floatingx/listener/IFxTouchListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lcom/petterp/floatingx/view/IFxInternalHelper;)V

    :goto_0
    iget-object p0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->touchHelper:Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    sget-object v1, Lcom/petterp/floatingx/assist/FxDisplayMode;->DisplayOnly:Lcom/petterp/floatingx/assist/FxDisplayMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->isCurrentPointerId(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/FxDisplayMode;->getCanMove()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->scaledTouchSlop:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->scaledTouchSlop:F

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_9

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->isCurrentPointerId(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->resetConfig()V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    const-string p1, "fxView -> interceptEventCancel"

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->touchDownId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initTouchDown(Landroid/view/MotionEvent;)V

    :cond_9
    :goto_1
    return v2
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->isInitLayout:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->isInitLayout:Z

    iget-object p2, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->helpers:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;

    invoke-virtual {p3}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->onInit()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->helpers:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;

    invoke-virtual {p1}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->onSizeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract onTouchCancel(Landroid/view/MotionEvent;)V
.end method

.method public abstract onTouchDown(Landroid/view/MotionEvent;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->touchHelper:Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    sget-object v2, Lcom/petterp/floatingx/assist/FxDisplayMode;->DisplayOnly:Lcom/petterp/floatingx/assist/FxDisplayMode;

    if-eq v1, v2, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_d

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_d

    goto/16 :goto_a

    :cond_0
    iget v1, v0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->touchDownId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fxView -> touchToPointerDown: currentId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lokhttp3/logging/Utf8Kt;->getPointerId(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mainTouchId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->touchDownId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exist,return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1
    iget-object v1, v0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->preCheckPointerDownTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, p1}, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initTouchDown(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v1

    const-string v2, "fxView -> touchToPointerDown: current touch location error,return"

    invoke-virtual {v1, v2}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_4
    invoke-virtual {v0, p1}, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->isCurrentPointerId(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-boolean v1, v0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->isClickEvent:Z

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, v0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initX:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, v0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->scaledTouchSlop:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, v0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initY:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, v0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->scaledTouchSlop:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->isClickEvent:Z

    :goto_2
    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/FxDisplayMode;->getCanMove()Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_a

    :cond_8
    iget-object v1, v0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v1, p1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->onTouchMove(Landroid/view/MotionEvent;)V

    :goto_3
    iget-object v1, v0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    :goto_4
    iget-object v3, v0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    :goto_5
    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v3

    iget-object v3, v3, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    invoke-interface {v3, p1, v1, v2}, Lcom/petterp/floatingx/listener/IFxTouchListener;->onDragIng(Landroid/view/MotionEvent;FF)V

    :goto_6
    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fxView -> touchMove,x:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",y:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/petterp/floatingx/util/FxLog;->v(Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    iget-boolean v1, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeAdsorption:Z

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/FxDisplayMode;->getCanMove()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v1, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->moveToEdge()V

    :cond_f
    :goto_7
    iget-object v1, v0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v1, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v1, p1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->onTouchCancel(Landroid/view/MotionEvent;)V

    :goto_8
    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

    if-nez v1, :cond_11

    goto :goto_9

    :cond_11
    invoke-interface {v1}, Lcom/petterp/floatingx/listener/IFxTouchListener;->onUp()V

    :goto_9
    iget-boolean v1, v0, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->isClickEvent:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    :cond_12
    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->resetConfig()V

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v1

    const-string v2, "fxView -> mainTouchUp"

    invoke-virtual {v1, v2}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    invoke-virtual {v0, p1}, Lcom/petterp/floatingx/view/helper/FxViewTouchHelper;->initTouchDown(Landroid/view/MotionEvent;)V

    :cond_14
    :goto_a
    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

    if-nez v0, :cond_15

    goto :goto_b

    :cond_15
    invoke-interface {v0, p1}, Lcom/petterp/floatingx/listener/IFxTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    :goto_b
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public abstract onTouchMove(Landroid/view/MotionEvent;)V
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p0

    iget-object p0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxViewLifecycles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/petterp/floatingx/listener/IFxViewLifecycle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract parentSize()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair;"
        }
    .end annotation
.end method

.method public final preCancelAction$floatingx_release()V
    .locals 1

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->helpers:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;

    invoke-virtual {v0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->onPreCancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preCheckPointerDownTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p0, "event"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final safeUpdatingXY(FF)V
    .locals 2

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeX(FZ)F

    move-result p1

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    invoke-virtual {v0, p2, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeY(FZ)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/petterp/floatingx/view/FxBasicContainerView;->updateXY(FF)V

    return-void
.end method

.method public final setInitLayout$floatingx_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->isInitLayout:Z

    return-void
.end method

.method public updateView(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p1

    const-string v0, "fxView -> updateView"

    invoke-virtual {p1, v0}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->needUpdateLocation:Z

    iget-object p1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->_childView:Landroid/view/View;

    invoke-static {p0, p1}, Lokhttp3/logging/Utf8Kt;->safeRemoveView(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->installChildView()Landroid/view/View;

    return-void
.end method

.method public updateView(Landroid/view/View;)V
    .locals 1

    const-string v0, "layoutView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p1

    const-string v0, "fxView -> updateView"

    invoke-virtual {p1, v0}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->locationHelper:Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->needUpdateLocation:Z

    iget-object p1, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;->_childView:Landroid/view/View;

    invoke-static {p0, p1}, Lokhttp3/logging/Utf8Kt;->safeRemoveView(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->installChildView()Landroid/view/View;

    return-void
.end method

.method public abstract updateXY(FF)V
.end method
