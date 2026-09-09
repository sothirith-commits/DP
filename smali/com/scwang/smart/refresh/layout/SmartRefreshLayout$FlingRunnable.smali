.class public final Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mLastTime:J

.field public mOffset:I

.field public mStartTime:J

.field public mVelocity:F

.field public final synthetic this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mStartTime:J

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mLastTime:J

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    iget p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    if-ne v1, p0, :cond_7

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v1, :cond_7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mLastTime:J

    sub-long v3, v1, v3

    iget v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    float-to-double v5, v5

    const v7, 0x3f7ae148    # 0.98f

    float-to-double v7, v7

    iget-wide v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mStartTime:J

    sub-long v9, v1, v9

    long-to-float v9, v9

    const/16 v10, 0xa

    int-to-float v11, v10

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float v11, v12, v11

    div-float/2addr v9, v11

    float-to-double v13, v9

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-float v5, v7

    iput v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    long-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v12

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v5, v4

    const/4 v5, 0x0

    if-lez v4, :cond_6

    iput-wide v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mLastTime:J

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    mul-int/2addr v2, v1

    const/4 v4, 0x1

    if-lez v2, :cond_0

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v2, v1, v4}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v1, v10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    iput-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iget p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    neg-float p0, p0

    float-to-int p0, p0

    sget v4, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->density:F

    instance-of v4, v1, Landroid/widget/ScrollView;

    if-eqz v4, :cond_1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1, p0}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_0

    :cond_1
    instance-of v4, v1, Landroid/widget/AbsListView;

    if-eqz v4, :cond_2

    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->fling(I)V

    goto :goto_0

    :cond_2
    instance-of v4, v1, Landroid/webkit/WebView;

    if-eqz v4, :cond_3

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1, v2, p0}, Landroid/webkit/WebView;->flingScroll(II)V

    goto :goto_0

    :cond_3
    instance-of v4, v1, Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_4

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1, p0}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    goto :goto_0

    :cond_4
    instance-of v4, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_5

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    :cond_5
    :goto_0
    iget-boolean p0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    cmpl-float p0, v3, p0

    if-lez p0, :cond_7

    iput-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_1

    :cond_6
    iput-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_7
    :goto_1
    return-void
.end method
