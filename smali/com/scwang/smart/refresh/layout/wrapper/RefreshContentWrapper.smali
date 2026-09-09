.class public final Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final mBoundaryAdapter:Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;

.field public mContentView:Landroid/view/View;

.field public mEnableLoadMore:Z

.field public mEnableRefresh:Z

.field public mFixedFooter:Landroid/view/View;

.field public mFixedHeader:Landroid/view/View;

.field public mLastSpinner:I

.field public final mOriginalContentView:Landroid/view/View;

.field public mScrollableView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mLastSpinner:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mEnableRefresh:Z

    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mEnableLoadMore:Z

    new-instance v0, Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;

    invoke-direct {v0}, Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;-><init>()V

    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    return-void
.end method

.method public static findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;
    .locals 5

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v2, v3, v4, v1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->isTransformedTouchPointInView(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of p0, v2, Landroidx/viewpager/widget/ViewPager;

    if-nez p0, :cond_0

    invoke-static {v2}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    iget p0, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p0, v0}, Landroid/graphics/PointF;->offset(FF)V

    invoke-static {v2, p1, p2}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iget p0, v1, Landroid/graphics/PointF;->x:F

    neg-float p0, p0

    iget p2, v1, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/PointF;->offset(FF)V

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object p2
.end method


# virtual methods
.method public final canLoadMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mEnableLoadMore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;->canLoadMore(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final canRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mEnableRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;->canRefresh(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final moveSpinner(III)V
    .locals 5

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    if-lez p1, :cond_0

    int-to-float v4, p1

    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    move p2, v2

    :goto_0
    if-eq p3, v3, :cond_3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    if-gez p1, :cond_2

    int-to-float p2, p1

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_3

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    if-nez p2, :cond_4

    int-to-float p2, p1

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mFixedHeader:Landroid/view/View;

    if-eqz p2, :cond_5

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mFixedFooter:Landroid/view/View;

    if-eqz p0, :cond_6

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :try_start_0
    iget v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mLastSpinner:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/AbsListView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/AbsListView;

    float-to-int v0, v0

    sget v2, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->density:F

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->scrollListBy(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollBy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iput p1, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mLastSpinner:I

    return-void
.end method

.method public final scrollContentWhenFinished(I)Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;
    .locals 2

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-gez p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput p1, p0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mLastSpinner:I

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
