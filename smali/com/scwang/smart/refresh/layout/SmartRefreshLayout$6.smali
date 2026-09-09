.class public final Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public count:I

.field public final synthetic this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

.field public final synthetic val$more:I

.field public final synthetic val$noMoreData:Ljava/lang/Boolean;

.field public final synthetic val$success:Z


# direct methods
.method public constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;ILjava/lang/Boolean;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->val$more:I

    iput-object p3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->val$success:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->count:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    if-nez v0, :cond_5

    iget-object v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-object v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    iget-object v8, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v9, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v8, v9, :cond_0

    iput-object v5, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    goto :goto_0

    :cond_0
    iget-object v8, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_3

    iget-boolean v9, v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v9, :cond_3

    iget-boolean v9, v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v9, :cond_1

    sget-object v9, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v4, v9, :cond_3

    :cond_1
    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {v3, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v3, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v4, v1, :cond_4

    iget-object v1, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v1, :cond_4

    iget-object v1, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    if-eqz v1, :cond_4

    add-int/2addr v0, v7

    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->count:I

    iget-object v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->val$more:I

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v3, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, p0, :cond_4

    invoke-virtual {v3, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setNoMoreData(Z)V

    :cond_4
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v6, p0, :cond_c

    invoke-virtual {v3, v7}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setNoMoreData(Z)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->val$success:Z

    invoke-interface {v0, v3, p0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I

    move-result p0

    const v0, 0x7fffffff

    if-ge p0, v0, :cond_c

    iget-boolean v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_6

    iget-boolean v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v0, :cond_8

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-boolean v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    iget v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    iput v2, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    iput-boolean v2, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    iget v9, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v10, v0, v4

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->access$001(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V

    iget v9, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iget v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v4, v4

    add-float v10, v0, v4

    const/4 v8, 0x2

    move-wide v4, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->access$101(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V

    :cond_7
    iget-boolean v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v0, :cond_8

    iput v2, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    iget v9, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v10, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    const/4 v11, 0x0

    const/4 v8, 0x1

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->access$201(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V

    iput-boolean v2, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    iput v2, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    :cond_8
    iget v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez v0, :cond_a

    iget-object v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundInterpolator:Lcom/scwang/smart/refresh/layout/util/SmartUtil;

    iget v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v3, v2, p0, v0, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p0

    iget-boolean v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    if-eqz v0, :cond_9

    iget-object v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iget v1, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->scrollContentWhenFinished(I)Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    move-result-object v1

    :cond_9
    if-eqz p0, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    :cond_a
    if-gez v0, :cond_b

    iget-object v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundInterpolator:Lcom/scwang/smart/refresh/layout/util/SmartUtil;

    iget v1, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v3, v2, p0, v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_b
    iget-object p0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {p0, v2, v2}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    iget-object p0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_c
    :goto_1
    return-void
.end method
