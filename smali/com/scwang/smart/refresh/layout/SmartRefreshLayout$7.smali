.class public final Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public count:I

.field public final synthetic this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

.field public final synthetic val$more:I

.field public final synthetic val$noMoreData:Z

.field public final synthetic val$success:Z


# direct methods
.method public constructor <init>(ILcom/scwang/smart/refresh/layout/SmartRefreshLayout;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->val$more:I

    iput-boolean p3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->val$success:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->count:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->count:I

    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    if-nez v1, :cond_5

    iget-object v8, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v9, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v8, v9, :cond_0

    iget-object v10, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v11, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v10, v11, :cond_0

    iput-object v9, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    goto :goto_0

    :cond_0
    iget-object v10, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_3

    iget-boolean v11, v8, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v11, :cond_1

    sget-object v11, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v8, v11, :cond_3

    :cond_1
    iget-boolean v11, v8, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v11, :cond_3

    invoke-virtual {v10, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v0, v6}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v7, v9}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v7, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v8, v3, :cond_4

    iget-object v3, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v3, :cond_4

    iget-object v3, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    if-eqz v3, :cond_4

    add-int/2addr v1, v5

    iput v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->count:I

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->val$more:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v7, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    return-void

    :cond_4
    :goto_0
    if-eqz v2, :cond_d

    invoke-virtual {v7, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setNoMoreData(Z)V

    goto/16 :goto_4

    :cond_5
    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    iget-boolean v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->val$success:Z

    check-cast v1, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v1, v7, v8}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I

    move-result v1

    const v8, 0x7fffffff

    if-ge v1, v8, :cond_d

    if-eqz v2, :cond_6

    iget-boolean v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v2, :cond_6

    iget v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_6

    iget-object v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-virtual {v2}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move v5, v6

    :goto_1
    iget v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v5, :cond_7

    iget v5, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    :cond_7
    move v5, v6

    :goto_2
    sub-int/2addr v2, v5

    iget-boolean v5, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v5, :cond_8

    iget-boolean v5, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v5, :cond_b

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-boolean v5, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_a

    iget v5, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v5, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    iget v8, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    sub-int/2addr v8, v2

    iput v8, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    iput-boolean v6, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    iget-boolean v8, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    if-eqz v8, :cond_9

    move v8, v2

    goto :goto_3

    :cond_9
    move v8, v6

    :goto_3
    iget v13, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    int-to-float v15, v8

    add-float/2addr v5, v15

    iget v8, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v14, v5, v8

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-wide/from16 v8, v16

    move-wide/from16 v10, v16

    move/from16 v18, v15

    move v15, v5

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->access$301(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V

    iget v13, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v5, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    add-float v14, v5, v18

    const/4 v15, 0x0

    const/4 v12, 0x2

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->access$401(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V

    :cond_a
    iget-boolean v5, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v5, :cond_b

    iput v6, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    iget v13, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v14, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    const/4 v15, 0x0

    const/4 v12, 0x1

    move-wide/from16 v8, v16

    move-wide/from16 v10, v16

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->access$501(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V

    iput-boolean v6, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    iput v6, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    :cond_b
    iget-object v5, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/core/provider/CallbackWithHandler$2;

    const/4 v8, 0x7

    invoke-direct {v6, v2, v8, v0}, Landroidx/core/provider/CallbackWithHandler$2;-><init>(IILjava/lang/Object;)V

    iget v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v0, :cond_c

    int-to-long v3, v1

    :cond_c
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_4
    return-void
.end method
