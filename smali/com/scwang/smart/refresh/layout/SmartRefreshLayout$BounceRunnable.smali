.class public final Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mFrame:I

.field public mLastTime:J

.field public mOffset:F

.field public final mSmoothDistance:I

.field public mVelocity:F

.field public final synthetic this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;FI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mFrame:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mOffset:F

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    iput p3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mLastTime:J

    iget-object p3, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    int-to-long v1, v1

    invoke-virtual {p3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmpl-float p0, p2, v0

    iget-object p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    if-lez p0, :cond_0

    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    if-ne v1, p0, :cond_5

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v1, :cond_5

    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v1, v3, :cond_1

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    float-to-double v3, v1

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mFrame:I

    mul-int/lit8 v1, v1, 0x2

    int-to-double v5, v1

    const-wide v7, 0x3fdcccccc0000000L    # 0.44999998807907104

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float v1, v5

    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    float-to-double v3, v1

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mFrame:I

    mul-int/lit8 v1, v1, 0x2

    int-to-double v5, v1

    const-wide v7, 0x3feb333340000000L    # 0.8500000238418579

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float v1, v5

    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    float-to-double v3, v1

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mFrame:I

    mul-int/lit8 v1, v1, 0x2

    int-to-double v5, v1

    const-wide v7, 0x3fee666660000000L    # 0.949999988079071

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float v1, v5

    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mLastTime:J

    sub-long v5, v3, v5

    long-to-float v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v1, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    iget v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    const/16 v5, 0xa

    if-ltz v1, :cond_2

    iput-wide v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mLastTime:J

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mOffset:F

    add-float/2addr v1, v6

    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;->mOffset:F

    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v1, v5

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    iget-object p0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v3, :cond_3

    iget-object p0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz p0, :cond_4

    iget-object p0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_4
    :goto_1
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    iget p0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt p0, v1, :cond_5

    iget p0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    sub-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    sget v1, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->density:F

    div-float/2addr p0, v1

    float-to-int p0, p0

    const/16 v1, 0x1e

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v1, 0x64

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    mul-int/2addr p0, v5

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundInterpolator:Lcom/scwang/smart/refresh/layout/util/SmartUtil;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    :cond_5
    :goto_2
    return-void
.end method
