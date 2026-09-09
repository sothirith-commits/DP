.class public Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/api/RefreshLayout;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# static fields
.field public static final sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public animationRunnable:Ljava/lang/Runnable;

.field public mCurrentVelocity:I

.field public final mDisableContentWhenLoading:Z

.field public final mDisableContentWhenRefresh:Z

.field public mDragDirection:C

.field public final mDragRate:F

.field public final mEnableAutoLoadMore:Z

.field public final mEnableClipFooterWhenFixedBehind:Z

.field public final mEnableClipHeaderWhenFixedBehind:Z

.field public mEnableDisallowIntercept:Z

.field public final mEnableFooterFollowWhenNoMoreData:Z

.field public mEnableFooterTranslationContent:Z

.field public mEnableHeaderTranslationContent:Z

.field public mEnableLoadMore:Z

.field public final mEnableLoadMoreWhenContentNotFull:Z

.field public mEnableNestedScrolling:Z

.field public final mEnableOverScrollBounce:Z

.field public final mEnableOverScrollDrag:Z

.field public final mEnablePreviewInEditMode:Z

.field public final mEnablePureScrollMode:Z

.field public final mEnableRefresh:Z

.field public final mEnableScrollContentWhenLoaded:Z

.field public final mEnableScrollContentWhenRefreshed:Z

.field public mFalsifyEvent:Landroid/view/MotionEvent;

.field public final mFixedFooterViewId:I

.field public final mFixedHeaderViewId:I

.field public final mFloorDuration:I

.field public mFooterBackgroundColor:I

.field public mFooterHeight:I

.field public mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

.field public final mFooterInsetStart:I

.field public mFooterLocked:Z

.field public final mFooterMaxDragRate:F

.field public mFooterNoMoreData:Z

.field public mFooterNoMoreDataEffective:Z

.field public final mFooterTranslationViewId:I

.field public final mFooterTriggerRate:F

.field public final mHandler:Landroid/os/Handler;

.field public mHeaderBackgroundColor:I

.field public mHeaderHeight:I

.field public mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

.field public final mHeaderInsetStart:I

.field public final mHeaderMaxDragRate:F

.field public final mHeaderTranslationViewId:I

.field public final mHeaderTriggerRate:F

.field public mIsBeingDragged:Z

.field public final mKernel:Lcom/umeng/analytics/pro/ah;

.field public mLastOpenTime:J

.field public mLastSpinner:I

.field public mLastTimeOnActionDown:J

.field public mLastTouchX:F

.field public mLastTouchXOnActionDown:F

.field public mLastTouchY:F

.field public mLastTouchYOnActionDown:F

.field public mManualFooterTranslationContent:Z

.field public mManualHeaderTranslationContent:Z

.field public mManualLoadMore:Z

.field public final mMaximumVelocity:I

.field public final mMinimumVelocity:I

.field public final mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

.field public mNestedInProgress:Z

.field public final mNestedParent:Lcom/google/zxing/qrcode/decoder/Version$ECB;

.field public mPaint:Landroid/graphics/Paint;

.field public final mParentOffsetInWindow:[I

.field public final mPrimaryColors:[I

.field public final mReboundDuration:I

.field public final mReboundInterpolator:Lcom/scwang/smart/refresh/layout/util/SmartUtil;

.field public mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

.field public mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

.field public mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

.field public mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

.field public final mScreenHeightPixels:I

.field public final mScroller:Landroid/widget/Scroller;

.field public mSpinner:I

.field public mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

.field public mSuperDispatchTouchEvent:Z

.field public mTotalUnconsumed:I

.field public final mTouchSlop:I

.field public mTouchSpinner:I

.field public mTouchX:F

.field public mTouchY:F

.field public final mTwoLevelBottomPullUpToCloseRate:F

.field public final mVelocityTracker:Landroid/view/VelocityTracker;

.field public mVerticalPermit:Z

.field public mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

.field public reboundAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFloorDuration:I

    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundDuration:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDragRate:F

    const/16 v2, 0x6e

    iput-char v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDragDirection:C

    const/4 v2, -0x1

    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    const/4 v5, 0x2

    new-array v6, v5, [I

    iput-object v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    new-instance v6, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v6, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedParent:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    sget-object v7, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v7, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v7, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/high16 v7, 0x40200000    # 2.5f

    iput v7, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    iput v7, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    iput v8, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    const v9, 0x3e2aaaab

    iput v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTwoLevelBottomPullUpToCloseRate:F

    new-instance v9, Lcom/umeng/analytics/pro/ah;

    invoke-direct {v9, p0}, Lcom/umeng/analytics/pro/ah;-><init>(Ljava/lang/Object;)V

    iput-object v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    sget-object v9, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iput-object v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iput-object v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    iput v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    iput v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    iput-wide v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTimeOnActionDown:J

    const/4 v9, 0x0

    iput v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchXOnActionDown:F

    iput v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchYOnActionDown:F

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    new-instance v10, Landroid/widget/Scroller;

    invoke-direct {v10, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    new-instance v10, Lcom/scwang/smart/refresh/layout/util/SmartUtil;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput v4, v10, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->type:I

    iput-object v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundInterpolator:Lcom/scwang/smart/refresh/layout/util/SmartUtil;

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    iput v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSlop:I

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v10

    iput v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mMinimumVelocity:I

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v9

    iput v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mMaximumVelocity:I

    sget v9, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->density:F

    const/high16 v10, 0x42700000    # 60.0f

    mul-float/2addr v10, v9

    add-float/2addr v10, v1

    float-to-int v10, v10

    iput v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v9

    add-float/2addr v10, v1

    float-to-int v9, v10

    iput v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    sget-object v9, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    const/4 p2, 0x5

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDragRate:F

    const/16 p2, 0x20

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    const/16 p2, 0x1b

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/16 p2, 0x22

    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    const/16 p2, 0x1d

    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    const/16 p2, 0x24

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundDuration:I

    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    iget p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    const/16 v1, 0x1e

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    const/16 v7, 0x19

    invoke-virtual {p1, v7, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    const/16 p2, 0x1f

    iget v8, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    const/16 p2, 0x1a

    iget v8, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    const/16 v8, 0xc

    invoke-virtual {p1, v8, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    const/16 v9, 0xb

    invoke-virtual {p1, v9, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    const/16 p2, 0x12

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    const/16 p2, 0x10

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    const/16 p2, 0x13

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    const/16 v10, 0x15

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    const/16 v10, 0x16

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    const/16 v10, 0xe

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    const/16 v10, 0x9

    invoke-virtual {p1, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    const/16 v11, 0xa

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    const/16 v10, 0x8

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    const/4 v10, 0x7

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    const/16 v10, 0x11

    invoke-virtual {p1, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    const/16 v10, 0x18

    invoke-virtual {p1, v10, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    const/16 v10, 0x17

    invoke-virtual {p1, v10, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    const/16 v10, 0x21

    invoke-virtual {p1, v10, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    const/16 v10, 0x1c

    invoke-virtual {p1, v10, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    const/16 v2, 0xf

    iget-boolean v10, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    invoke-virtual {p1, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    invoke-virtual {v6, v2}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez v0, :cond_5

    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez v0, :cond_7

    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v4

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    if-eqz v0, :cond_8

    move-object v0, v1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :goto_6
    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :goto_7
    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/16 v1, 0x23

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_a

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_8

    :cond_a
    filled-new-array {v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_8

    :cond_b
    if-eqz v0, :cond_c

    filled-new-array {v4, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    :cond_c
    :goto_8
    if-eqz p2, :cond_d

    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez p2, :cond_d

    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez p2, :cond_d

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    :cond_d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$001(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public static synthetic access$101(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public static synthetic access$201(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public static synthetic access$301(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public static synthetic access$401(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public static synthetic access$501(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshFooterCreator;)V
    .locals 0

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshHeaderCreator;)V
    .locals 0

    return-void
.end method

.method public static setDefaultRefreshInitializer(Lcom/scwang/smart/refresh/layout/listener/DefaultRefreshInitializer;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 4

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroidx/transition/Transition$3;

    const/16 p4, 0x12

    invoke-direct {p3, p4, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/kyleduo/switchbutton/SwitchButton$1;

    const/4 p4, 0x7

    invoke-direct {p3, p4, p0}, Lcom/kyleduo/switchbutton/SwitchButton$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final computeScroll()V
    .locals 6

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-gez v1, :cond_1

    iget-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-virtual {v4}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->canRefresh()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    if-lez v1, :cond_b

    iget-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_b

    :cond_2
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-virtual {v3}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->canLoadMore()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_3
    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    if-eqz v3, :cond_a

    if-lez v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v1

    neg-float v1, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_a

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v4, v5, :cond_5

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v4, v5, :cond_6

    :cond_5
    new-instance v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;

    iget v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-direct {v3, p0, v1, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;FI)V

    iput-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_1

    :cond_6
    cmpg-float v3, v1, v3

    if-gez v3, :cond_9

    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v3, v4, :cond_8

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v3, v4, :cond_9

    :cond_8
    new-instance v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;

    iget v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v4, v4

    invoke-direct {v3, p0, v1, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;FI)V

    iput-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_1

    :cond_9
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v3, :cond_a

    new-instance v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;FI)V

    iput-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_a
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_2

    :cond_b
    iput-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_2
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x6

    if-ne v6, v2, :cond_0

    move v3, v11

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    move v9, v7

    move v12, v9

    move v8, v10

    :goto_2
    if-ge v8, v5, :cond_3

    if-ne v4, v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    if-eq v6, v2, :cond_5

    const/4 v2, 0x5

    if-ne v6, v2, :cond_6

    :cond_5
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_6

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    sub-float v3, v8, v3

    add-float/2addr v3, v2

    iput v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    :cond_6
    iput v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    if-nez v6, :cond_7

    iput v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchXOnActionDown:F

    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchYOnActionDown:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTimeOnActionDown:J

    :cond_7
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    iget-boolean v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    const/4 v4, 0x2

    if-eqz v2, :cond_b

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v4, :cond_a

    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    if-ne v2, v4, :cond_a

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    move v11, v4

    :goto_4
    int-to-float v6, v11

    div-float/2addr v5, v6

    invoke-virtual {v0, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez v3, :cond_9

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v3, :cond_9

    check-cast v3, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v3}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->isSupportHorizontalDrag()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    check-cast v0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v0, v2, v5, v4}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onHorizontalDrag(IFI)V

    goto :goto_5

    :cond_9
    iget-boolean v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v3, :cond_a

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v3, :cond_a

    check-cast v3, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v3}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->isSupportHorizontalDrag()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    check-cast v0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v0, v2, v5, v4}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onHorizontalDrag(IFI)V

    :cond_a
    :goto_5
    return v1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v3, :cond_c

    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v5, :cond_c

    if-eqz v2, :cond_38

    :cond_c
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v5, v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    iget v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSlop:I

    if-eqz v5, :cond_e

    if-ne v6, v11, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTimeOnActionDown:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchXOnActionDown:F

    sub-float/2addr v9, v2

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchYOnActionDown:F

    sub-float/2addr v8, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_d
    return v11

    :cond_e
    invoke-virtual {v0, v6}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->interceptAnimatorByAction(I)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v13, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v5, v13, :cond_10

    iget-boolean v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-nez v14, :cond_f

    goto :goto_7

    :cond_f
    :goto_6
    move v0, v10

    goto/16 :goto_11

    :cond_10
    :goto_7
    sget-object v14, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v5, v14, :cond_11

    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    if-eqz v5, :cond_11

    goto :goto_6

    :cond_11
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v15, 0x68

    if-eqz v6, :cond_33

    if-eq v6, v11, :cond_2f

    const/4 v14, 0x3

    if-eq v6, v4, :cond_12

    if-eq v6, v14, :cond_30

    goto/16 :goto_f

    :cond_12
    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchX:F

    sub-float/2addr v9, v4

    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    sub-float v4, v8, v4

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    if-nez v5, :cond_1f

    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableDisallowIntercept:Z

    if-nez v5, :cond_1f

    iget-char v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDragDirection:C

    if-eq v5, v15, :cond_1f

    iget-object v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    if-eqz v10, :cond_1f

    const/16 v10, 0x76

    if-eq v5, v10, :cond_14

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v14, v12

    cmpl-float v5, v5, v14

    if-ltz v5, :cond_13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v5, v5, v16

    if-gez v5, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v14

    if-ltz v5, :cond_1f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v5, v5, v13

    if-lez v5, :cond_1f

    iget-char v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDragDirection:C

    if-eq v5, v10, :cond_1f

    iput-char v15, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDragDirection:C

    goto/16 :goto_c

    :cond_14
    :goto_8
    iput-char v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDragDirection:C

    cmpl-float v5, v4, v7

    if-lez v5, :cond_17

    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-ltz v5, :cond_16

    if-nez v2, :cond_15

    if-eqz v3, :cond_17

    :cond_15
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-virtual {v5}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->canRefresh()Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    iput-boolean v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    int-to-float v5, v12

    sub-float v5, v8, v5

    iput v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    goto :goto_9

    :cond_17
    cmpg-float v5, v4, v7

    if-gez v5, :cond_1b

    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v5, :cond_1a

    if-nez v2, :cond_18

    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v5, :cond_1b

    :cond_18
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v5, v13, :cond_19

    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-nez v5, :cond_1a

    :cond_19
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-virtual {v5}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->canLoadMore()Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    iput-boolean v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    int-to-float v5, v12

    add-float/2addr v5, v8

    iput v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    :cond_1b
    :goto_9
    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_1f

    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    sub-float v4, v8, v4

    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    if-eqz v5, :cond_1c

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1c
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v5, :cond_1e

    if-nez v5, :cond_1d

    cmpl-float v5, v4, v7

    if-lez v5, :cond_1d

    goto :goto_a

    :cond_1d
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    goto :goto_b

    :cond_1e
    :goto_a
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    :goto_b
    invoke-virtual {v6, v5}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v10, v5, Landroid/view/ViewGroup;

    if-eqz v10, :cond_1f

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1f
    :goto_c
    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_2e

    float-to-int v5, v4

    iget v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    add-int/2addr v5, v10

    iget-object v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v13, v10, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v13, :cond_20

    if-ltz v5, :cond_21

    iget v13, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastSpinner:I

    if-ltz v13, :cond_21

    :cond_20
    iget-boolean v10, v10, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v10, :cond_2d

    if-gtz v5, :cond_21

    iget v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastSpinner:I

    if-lez v10, :cond_2d

    :cond_21
    iput v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastSpinner:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_22

    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchX:F

    add-float v21, v1, v9

    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    const/16 v23, 0x0

    const/16 v20, 0x0

    move-wide/from16 v16, v13

    move-wide/from16 v18, v13

    move/from16 v22, v1

    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_22
    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchX:F

    add-float v21, v1, v9

    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    int-to-float v9, v5

    add-float v22, v1, v9

    const/16 v23, 0x0

    const/16 v20, 0x2

    move-wide/from16 v16, v13

    move-wide/from16 v18, v13

    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v9, :cond_23

    int-to-float v9, v12

    cmpl-float v4, v4, v9

    if-lez v4, :cond_23

    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v4, :cond_23

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    :cond_23
    if-lez v5, :cond_25

    if-nez v2, :cond_24

    if-eqz v3, :cond_25

    :cond_24
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-virtual {v3}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->canRefresh()Z

    move-result v3

    if-eqz v3, :cond_25

    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    const/4 v2, 0x0

    iput v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v6, v2}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :goto_d
    const/4 v10, 0x0

    goto :goto_e

    :cond_25
    if-gez v5, :cond_27

    if-nez v2, :cond_26

    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v2, :cond_27

    :cond_26
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-virtual {v2}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_27

    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    const/4 v2, 0x0

    iput v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v6, v2}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_d

    :cond_27
    move v10, v5

    :goto_e
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v3, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v3, :cond_28

    if-ltz v10, :cond_29

    :cond_28
    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v2, :cond_2b

    if-lez v10, :cond_2b

    :cond_29
    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v1, :cond_2a

    invoke-virtual {v0, v7}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    :cond_2a
    return v11

    :cond_2b
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2c

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v5, v10

    :cond_2d
    int-to-float v1, v5

    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    return v11

    :cond_2e
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v2, :cond_32

    int-to-float v2, v12

    cmpl-float v2, v4, v2

    if-lez v2, :cond_32

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_32

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_f

    :cond_2f
    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    invoke-virtual {v5, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    invoke-virtual {v0, v7}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->startFlingIfNeed(F)Z

    :cond_30
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    const/16 v2, 0x6e

    iput-char v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDragDirection:C

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchX:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->overSpinner()V

    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_32

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    return v11

    :cond_32
    :goto_f
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_33
    move v2, v10

    iput v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    iput v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchX:F

    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    iput v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastSpinner:I

    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iput v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    iput-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    iput-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableDisallowIntercept:Z

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_34

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTouchY:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTwoLevelBottomPullUpToCloseRate:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_34

    iput-char v15, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDragDirection:C

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    return v0

    :cond_34
    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    if-eqz v0, :cond_37

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-eq v1, v3, :cond_35

    invoke-static {v3, v2, v1}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    :cond_35
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-ne v1, v3, :cond_36

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;->mActionEvent:Landroid/graphics/PointF;

    goto :goto_10

    :cond_36
    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;

    iput-object v2, v0, Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;->mActionEvent:Landroid/graphics/PointF;

    :cond_37
    :goto_10
    return v11

    :goto_11
    return v0

    :cond_38
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    sget-object v10, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    sget-object v11, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    iget-boolean v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    const/4 v13, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v8, :cond_8

    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v12, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v2, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v2, :cond_4

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    :cond_2
    :goto_2
    move v14, v1

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    if-ne v2, v11, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v2

    goto :goto_2

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v14

    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v1, v14

    :cond_4
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    if-eq v2, v10, :cond_6

    :cond_5
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v2, :cond_8

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v0

    :cond_7
    :goto_4
    return v13

    :cond_8
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v8, :cond_10

    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    if-nez v12, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_7

    :cond_9
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v2, :cond_c

    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_a
    :goto_5
    move v9, v1

    goto :goto_6

    :cond_b
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    if-ne v2, v11, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v2

    goto :goto_5

    :goto_6
    int-to-float v3, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v1, v9

    :cond_c
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    if-eq v2, v10, :cond_e

    :cond_d
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v2, :cond_10

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v0

    :cond_f
    :goto_7
    return v13

    :cond_10
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public final finishRefresh(IZLjava/lang/Boolean;)V
    .locals 2

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    new-instance v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;ILjava/lang/Boolean;Z)V

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long p1, p1

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$6;->run()V

    :goto_0
    return-void
.end method

.method public final finishRefresh(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v1, v3

    long-to-int p1, v1

    const/16 v1, 0x12c

    rsub-int p1, p1, 0x12c

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)V

    return-void
.end method

.method public final finishRefreshWithNoMoreData()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x12c

    rsub-int v0, v0, 0x12c

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)V

    return-void
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;->backgroundColor:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    sget-object v2, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_Layout:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;->backgroundColor:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    aget-object p1, v2, p1

    iput-object p1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedParent:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    iget p0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getRefreshFooter()Lcom/scwang/smart/refresh/layout/api/RefreshFooter;
    .locals 1

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    instance-of v0, p0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRefreshHeader()Lcom/scwang/smart/refresh/layout/api/RefreshHeader;
    .locals 1

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    instance-of v0, p0, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getState()Lcom/scwang/smart/refresh/layout/constant/RefreshState;
    .locals 0

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    return-object p0
.end method

.method public final interceptAnimatorByAction(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    if-ne p1, v2, :cond_1

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v3, p1}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_2

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v3, p1}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_5
    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public final isEnableRefreshOrLoadMore(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z
    .locals 0

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p0

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final moveSpinnerInfinitely(F)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    if-nez v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-virtual {v1}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->canLoadMore()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v4, v3, 0x5

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const v4, 0x7f0b054b

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchY:F

    int-to-float v7, v3

    const/high16 v8, 0x40c00000    # 6.0f

    div-float v8, v7, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1

    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    const/high16 v8, 0x41800000    # 16.0f

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Don not pull anymore, I can not do it!"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0, v4, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    iget-object v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    const/4 v9, 0x1

    if-ne v4, v6, :cond_2

    cmpl-float v6, v1, v2

    if-lez v6, :cond_2

    float-to-int v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v8, v3, v9}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    goto/16 :goto_3

    :cond_2
    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    iget v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDragRate:F

    const-wide/16 v12, 0x0

    const/high16 v16, 0x41200000    # 10.0f

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    if-ne v4, v6, :cond_6

    cmpl-float v6, v1, v2

    if-ltz v6, :cond_6

    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v4, v4

    cmpg-float v6, v1, v4

    if-gez v6, :cond_3

    float-to-int v3, v1

    invoke-virtual {v8, v3, v9}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    goto/16 :goto_3

    :cond_3
    cmpg-float v6, v10, v16

    if-gez v6, :cond_4

    mul-float/2addr v10, v4

    :cond_4
    sub-float/2addr v10, v4

    float-to-double v5, v10

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v3, v4

    int-to-double v9, v3

    int-to-float v3, v4

    sub-float v3, v1, v3

    mul-float/2addr v3, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v3, v3

    neg-double v14, v3

    cmpl-double v11, v9, v12

    if-nez v11, :cond_5

    move-wide/from16 v9, v17

    :cond_5
    div-double/2addr v14, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double v17, v17, v9

    mul-double v5, v5, v17

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    goto/16 :goto_3

    :cond_6
    cmpg-float v5, v1, v2

    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    if-gez v5, :cond_c

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v4, v5, :cond_8

    iget-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    if-eqz v7, :cond_c

    iget-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v4, :cond_c

    iget-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_8
    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v5, v4

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_9

    float-to-int v3, v1

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    goto/16 :goto_3

    :cond_9
    cmpg-float v5, v6, v16

    if-gez v5, :cond_a

    int-to-float v5, v4

    mul-float/2addr v6, v5

    :cond_a
    int-to-float v4, v4

    sub-float/2addr v6, v4

    float-to-double v4, v6

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v3, v6

    int-to-double v9, v3

    int-to-float v3, v6

    add-float/2addr v3, v1

    mul-float/2addr v3, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    neg-float v3, v3

    float-to-double v14, v3

    neg-double v2, v14

    cmpl-double v6, v9, v12

    if-nez v6, :cond_b

    move-wide/from16 v9, v17

    :cond_b
    div-double/2addr v2, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v17, v17, v2

    mul-double v2, v17, v4

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    goto/16 :goto_3

    :cond_c
    cmpl-float v4, v1, v2

    if-ltz v4, :cond_f

    cmpg-float v2, v10, v16

    if-gez v2, :cond_d

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-double v4, v2

    goto :goto_1

    :cond_d
    float-to-double v4, v10

    :goto_1
    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    mul-float/2addr v11, v1

    const/4 v6, 0x0

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-double v9, v9

    neg-double v14, v9

    cmpl-double v6, v2, v12

    if-nez v6, :cond_e

    move-wide/from16 v2, v17

    :cond_e
    div-double/2addr v14, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v17, v17, v2

    mul-double v2, v17, v4

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    goto :goto_3

    :cond_f
    cmpg-float v2, v6, v16

    if-gez v2, :cond_10

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-double v4, v2

    goto :goto_2

    :cond_10
    float-to-double v4, v6

    :goto_2
    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    mul-float/2addr v11, v1

    const/4 v6, 0x0

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    neg-float v6, v9

    float-to-double v9, v6

    neg-double v14, v9

    cmpl-double v6, v2, v12

    if-nez v6, :cond_11

    move-wide/from16 v2, v17

    :cond_11
    div-double/2addr v14, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v17, v17, v2

    mul-double v2, v17, v4

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    :goto_3
    if-eqz v7, :cond_13

    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_13

    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_13

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_13

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_13

    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-virtual {v8, v1}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_12
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateDirectLoading(Z)V

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lme/wcy/lrcview/LrcView$5;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0}, Lme/wcy/lrcview/LrcView$5;-><init>(ILjava/lang/Object;)V

    iget v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundDuration:I

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method public final notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 3

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_0
    if-eqz v2, :cond_1

    check-cast v2, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v2, p0, v0, p1}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_1
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_3

    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    :cond_3
    :goto_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 17

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    :goto_2
    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v4, v3

    :goto_3
    if-ge v4, v0, :cond_6

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_5

    :cond_3
    iget-object v6, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_5

    :cond_4
    new-instance v6, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v6, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    const/4 v4, -0x1

    if-nez v0, :cond_7

    sget v0, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->density:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v0, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v0, v6

    float-to-int v0, v0

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v7, -0x9a00

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const v5, 0x7f13044e

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    new-instance v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    invoke-super {v1, v6, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-direct {v5, v6}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v5, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iget-object v5, v5, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_7
    iget v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;->boundary:Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;

    iget-object v8, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iget-object v0, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;

    iget-boolean v9, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    iput-boolean v9, v0, Lcom/scwang/smart/refresh/layout/simple/SimpleBoundaryDecider;->mEnableLoadMoreWhenContentNotFull:Z

    iget-object v0, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v9

    move-object v10, v7

    :goto_4
    iget-object v11, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    if-eqz v10, :cond_8

    instance-of v12, v10, Landroidx/core/view/NestedScrollingParent;

    if-eqz v12, :cond_f

    instance-of v12, v10, Landroidx/core/view/NestedScrollingChild;

    if-nez v12, :cond_f

    :cond_8
    if-nez v10, :cond_9

    const/4 v12, 0x1

    goto :goto_5

    :cond_9
    move v12, v3

    :goto_5
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v14, v7

    :goto_6
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v15

    if-lez v15, :cond_d

    if-nez v14, :cond_d

    invoke-virtual {v13}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_c

    if-nez v12, :cond_a

    if-eq v15, v0, :cond_b

    :cond_a
    invoke-static {v15}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object v14, v15

    goto :goto_8

    :cond_b
    instance-of v7, v15, Landroid/view/ViewGroup;

    if-eqz v7, :cond_c

    check-cast v15, Landroid/view/ViewGroup;

    move v7, v3

    :goto_7
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v7, v2, :cond_c

    invoke-virtual {v15, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    const/4 v7, 0x0

    goto :goto_6

    :cond_d
    if-nez v14, :cond_e

    move-object v14, v0

    :cond_e
    if-ne v14, v10, :cond_14

    :cond_f
    if-eqz v10, :cond_10

    iput-object v10, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    :cond_10
    if-nez v5, :cond_11

    if-eqz v6, :cond_13

    :cond_11
    iput-object v5, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mFixedHeader:Landroid/view/View;

    iput-object v6, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mFixedFooter:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, v11, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v7, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v7, v11, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-interface {v7}, Lcom/scwang/smart/refresh/layout/api/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v10, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-interface {v7}, Lcom/scwang/smart/refresh/layout/api/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    const v2, 0x7f0b054b

    if-eqz v5, :cond_12

    const-string v4, "fixed-top"

    invoke-virtual {v5, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {v5}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->measureViewHeight(Landroid/view/View;)I

    move-result v10

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v10, Landroid/widget/Space;

    iget-object v11, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v10, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    if-eqz v6, :cond_13

    const-string v4, "fixed-bottom"

    invoke-virtual {v6, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v6}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->measureViewHeight(Landroid/view/View;)I

    move-result v9

    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v9, Landroid/widget/Space;

    iget-object v8, v8, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v9, v8}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x50

    iput v2, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    iget v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_18

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iput v3, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v2, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    iget v4, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-virtual {v0, v3, v2, v4}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->moveSpinner(III)V

    goto :goto_d

    :cond_14
    if-nez v9, :cond_16

    :try_start_0
    instance-of v0, v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_16

    iget-object v0, v11, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    move-object v0, v14

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    :goto_9
    if-ltz v2, :cond_17

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v11, :cond_15

    check-cast v10, Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v11, Lcom/scwang/smart/refresh/layout/util/DesignUtil$1;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v8}, Lcom/scwang/smart/refresh/layout/util/DesignUtil$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/scwang/smart/refresh/layout/util/DesignUtil$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_15
    :goto_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v7, 0x1

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :cond_16
    const/4 v7, 0x1

    :cond_17
    :goto_c
    move-object v0, v14

    move-object v10, v0

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_18
    :goto_d
    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    if-eqz v0, :cond_1a

    iget-object v2, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v2, :cond_19

    invoke-interface {v2, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    :cond_19
    iget-object v2, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v2, :cond_1a

    invoke-interface {v2, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    :cond_1a
    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-super {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_1b
    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_1c
    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_1d
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v4, v5, :cond_1

    invoke-interface {v2, p0, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I

    :cond_1
    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v4, v5, :cond_2

    check-cast v2, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v2, p0, v3}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I

    :cond_2
    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v2, v3, v0}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_4
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    return-void
.end method

.method public final onFinishInflate()V
    .locals 11

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    move v6, v4

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ge v4, v0, :cond_4

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lt v6, v8, :cond_0

    if-ne v4, v7, :cond_1

    :cond_0
    move v5, v4

    move v6, v8

    goto :goto_2

    :cond_1
    instance-of v8, v9, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-nez v8, :cond_3

    if-ge v6, v7, :cond_3

    if-lez v4, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    move v5, v4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_7

    new-instance v4, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    if-ne v5, v7, :cond_6

    if-ne v0, v1, :cond_5

    :goto_3
    move v1, v3

    goto :goto_4

    :cond_5
    move v8, v2

    goto :goto_3

    :cond_6
    if-ne v0, v8, :cond_7

    move v1, v2

    move v8, v7

    goto :goto_4

    :cond_7
    move v1, v2

    move v8, v1

    :goto_4
    move v4, v3

    :goto_5
    if-ge v4, v0, :cond_10

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_d

    if-eq v4, v8, :cond_8

    if-ne v1, v2, :cond_8

    iget-object v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-nez v6, :cond_8

    instance-of v6, v5, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    if-eq v4, v8, :cond_9

    if-ne v8, v2, :cond_f

    instance-of v6, v5, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_f

    :cond_9
    iget-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    move v6, v3

    goto :goto_7

    :cond_b
    :goto_6
    move v6, v7

    :goto_7
    iput-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    instance-of v6, v5, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_c

    check-cast v5, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    goto :goto_8

    :cond_c
    new-instance v6, Lcom/scwang/smart/refresh/layout/wrapper/RefreshFooterWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_8
    iput-object v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    goto :goto_b

    :cond_d
    :goto_9
    instance-of v6, v5, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_e

    check-cast v5, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    goto :goto_a

    :cond_e
    new-instance v6, Lcom/scwang/smart/refresh/layout/wrapper/RefreshHeaderWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_a
    iput-object v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return-void

    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "A maximum of 3 child views are supported. Most only support three sub views."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_13

    invoke-super {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_12

    const v7, 0x7f0b054b

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "GONE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iget-boolean v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    sget-object v9, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v7, :cond_4

    iget-object v7, v7, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-ne v7, v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v0, v8}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    iget-object v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iget-object v12, v12, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    instance-of v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v14, :cond_2

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    move-object v13, v9

    :goto_2
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v1

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v13

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-virtual {v0, v7, v11}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v13, v7

    add-int v16, v16, v7

    :cond_3
    move/from16 v7, v16

    invoke-virtual {v12, v14, v13, v15, v7}, Landroid/view/View;->layout(IIII)V

    :cond_4
    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    sget-object v11, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eqz v7, :cond_8

    invoke-interface {v7}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v7

    if-ne v7, v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v10, :cond_5

    invoke-virtual {v0, v8}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    move v7, v4

    :goto_3
    iget-object v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v8}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_6

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_6
    move-object v12, v9

    :goto_4
    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v12, v14

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v12

    if-nez v7, :cond_7

    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v7}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v7

    if-ne v7, v11, :cond_7

    iget v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v12, v7

    sub-int/2addr v15, v7

    :cond_7
    invoke-virtual {v8, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    :cond_8
    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v7, :cond_12

    invoke-interface {v7}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v7

    if-ne v7, v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v10, :cond_9

    iget-boolean v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v6}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    move v6, v4

    :goto_5
    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v7}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_a

    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_a
    iget-object v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v8}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v8

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v12

    iget v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v13, v12

    iget-boolean v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v14}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v14

    if-ne v14, v11, :cond_c

    iget-boolean v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v11}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iget-object v11, v11, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    instance-of v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v14, :cond_b

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_6

    :cond_b
    move v13, v4

    :goto_6
    add-int v14, v2, v2

    add-int/2addr v14, v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v13, v11, v14

    :cond_c
    sget-object v11, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v8, v11, :cond_d

    iget v6, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v13, v6, v12

    goto :goto_a

    :cond_d
    if-nez v6, :cond_10

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eq v8, v6, :cond_10

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne v8, v6, :cond_e

    goto :goto_9

    :cond_e
    iget-boolean v6, v8, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v6, :cond_11

    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v6, :cond_11

    iget-boolean v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v6}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v6

    if-eqz v6, :cond_f

    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v6, v6

    goto :goto_7

    :cond_f
    move v6, v4

    :goto_7
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_8
    sub-int/2addr v13, v6

    goto :goto_a

    :cond_10
    :goto_9
    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    goto :goto_8

    :cond_11
    :goto_a
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v13

    invoke-virtual {v7, v10, v13, v6, v8}, Landroid/view/View;->layout(IIII)V

    :cond_12
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public final onMeasure(II)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, v6, :cond_28

    invoke-super {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    const v11, 0x7f0b054b

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "GONE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    move v13, v1

    move/from16 v19, v6

    move/from16 v20, v7

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v2

    goto/16 :goto_16

    :cond_2
    iget-object v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    iget-object v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    sget-object v13, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    sget-object v14, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v15, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    sget-object v16, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    sget-object v17, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->values:[Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    const/high16 v18, 0x41200000    # 10.0f

    if-eqz v11, :cond_10

    invoke-interface {v11}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v11

    if-ne v11, v10, :cond_10

    iget-object v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v11}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move/from16 v19, v6

    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v20, v7

    goto :goto_2

    :cond_3
    move/from16 v20, v7

    move-object/from16 v6, v16

    :goto_2
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v2

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v7, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    move/from16 v21, v7

    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget v1, v7, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    move-object/from16 v22, v10

    const/4 v10, 0x6

    if-ge v1, v10, :cond_7

    iget v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_4

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v10

    invoke-virtual {v7, v14}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v7

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iput v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iput-object v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    goto :goto_3

    :cond_4
    const/4 v5, -0x2

    if-ne v1, v5, :cond_7

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v1

    if-ne v1, v4, :cond_5

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v1, :cond_7

    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v5

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v5

    const/4 v5, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v5, -0x80000000

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v11, v2, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_7

    if-eq v5, v1, :cond_6

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v1, v13}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v1

    iput v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iput-object v13, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :cond_6
    const/4 v1, -0x1

    goto :goto_3

    :cond_7
    move/from16 v1, v21

    :cond_8
    :goto_3
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v5

    if-ne v5, v4, :cond_a

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    :cond_9
    const/4 v5, 0x0

    :goto_4
    const/4 v7, -0x1

    goto :goto_7

    :cond_a
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v5

    iget-boolean v5, v5, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v5, :cond_9

    if-nez v3, :cond_9

    invoke-virtual {v0, v15}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    :goto_6
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    :goto_7
    if-eq v1, v7, :cond_c

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v7

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v11, v2, v1}, Landroid/view/View;->measure(II)V

    :cond_c
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v2, v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v2, :cond_f

    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v6, v5, v18

    if-gez v6, :cond_d

    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    :cond_d
    if-nez v2, :cond_e

    iget v1, v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-object v1, v17, v1

    :cond_e
    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    float-to-int v5, v5

    invoke-interface {v1, v12, v2, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/umeng/analytics/pro/ah;II)V

    :cond_f
    if-eqz v3, :cond_11

    invoke-virtual {v0, v15}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v8, v1

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v9, v1

    goto :goto_8

    :cond_10
    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v22, v10

    :cond_11
    :goto_8
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_20

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v2, v22

    if-ne v1, v2, :cond_1f

    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_12

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_9

    :cond_12
    move-object/from16 v6, v16

    :goto_9
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v11, p1

    invoke-static {v11, v7, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    move/from16 v21, v10

    iget-object v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget v11, v10, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    move/from16 v22, v15

    const/4 v15, 0x6

    if-ge v11, v15, :cond_16

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v11, :cond_13

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v13

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v13

    invoke-virtual {v10, v14}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v10

    if-eqz v10, :cond_17

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v10

    iput v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iput-object v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    goto :goto_a

    :cond_13
    const/4 v5, -0x2

    if-ne v11, v5, :cond_16

    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v5

    if-ne v5, v4, :cond_14

    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_16

    :cond_14
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v10

    const/4 v10, 0x0

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v10, -0x80000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v1, v7, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-lez v10, :cond_16

    if-eq v10, v5, :cond_15

    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    invoke-virtual {v5, v13}, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v5

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v5

    iput v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iput-object v13, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    :cond_15
    const/4 v11, -0x1

    goto :goto_a

    :cond_16
    move/from16 v11, v21

    :cond_17
    :goto_a
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v5

    if-ne v5, v4, :cond_18

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto :goto_e

    :cond_18
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v4, :cond_1a

    if-nez v3, :cond_1a

    iget-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v4

    if-eqz v4, :cond_19

    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v5, v4

    move v4, v5

    :goto_b
    const/4 v5, 0x0

    goto :goto_c

    :cond_19
    const/4 v4, 0x0

    goto :goto_b

    :goto_c
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    :goto_d
    const/4 v4, -0x1

    goto :goto_e

    :cond_1a
    const/4 v5, 0x0

    goto :goto_d

    :goto_e
    if-eq v11, v4, :cond_1b

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v11, v4

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v11, v4

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v7, v4}, Landroid/view/View;->measure(II)V

    :cond_1b
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-boolean v6, v4, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v6, :cond_1e

    iget v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v10, v7, v18

    if-gez v10, :cond_1c

    iget v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v10, v10

    mul-float/2addr v7, v10

    :cond_1c
    if-nez v6, :cond_1d

    iget v4, v4, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->ordinal:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    aget-object v4, v17, v4

    goto :goto_f

    :cond_1d
    const/4 v6, 0x1

    :goto_f
    iput-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    iget v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    float-to-int v7, v7

    check-cast v4, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v4, v12, v10, v7}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onInitialized(Lcom/umeng/analytics/pro/ah;II)V

    goto :goto_10

    :cond_1e
    const/4 v6, 0x1

    :goto_10
    if-eqz v3, :cond_21

    iget-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v9

    move v9, v1

    move v8, v4

    goto :goto_11

    :cond_1f
    move/from16 v22, v15

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_11

    :cond_20
    move-object/from16 v2, v22

    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v22, v15

    :cond_21
    :goto_11
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    if-eqz v1, :cond_27

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-ne v1, v2, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_22

    move-object/from16 v16, v2

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_22
    move-object/from16 v4, v16

    iget-object v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v7, :cond_23

    move/from16 v7, v22

    invoke-virtual {v0, v7}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-boolean v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-virtual {v0, v7, v10}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v7

    if-eqz v7, :cond_23

    move v7, v6

    goto :goto_12

    :cond_23
    move v7, v5

    :goto_12
    iget-object v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v10, :cond_24

    iget-boolean v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v10}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v10

    if-eqz v10, :cond_24

    iget-boolean v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-virtual {v0, v10, v11}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v10

    if-eqz v10, :cond_24

    move v10, v6

    goto :goto_13

    :cond_24
    move v10, v5

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v12, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v11

    iget v11, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v13, p1

    invoke-static {v13, v12, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int/2addr v14, v12

    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v12

    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v12

    if-eqz v3, :cond_25

    if-eqz v7, :cond_25

    iget v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    goto :goto_14

    :cond_25
    move v7, v5

    :goto_14
    add-int/2addr v14, v7

    if-eqz v3, :cond_26

    if-eqz v10, :cond_26

    iget v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    goto :goto_15

    :cond_26
    move v7, v5

    :goto_15
    add-int/2addr v14, v7

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v7, p2

    invoke-static {v7, v14, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {v1, v11, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v10

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    add-int/2addr v8, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    add-int/2addr v9, v1

    goto :goto_16

    :cond_27
    move/from16 v13, p1

    move/from16 v7, p2

    :goto_16
    add-int/lit8 v1, v20, 0x1

    move v2, v7

    move/from16 v6, v19

    move v7, v1

    move v1, v13

    goto/16 :goto_1

    :cond_28
    move v13, v1

    move v7, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v9

    invoke-super/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v13}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-super/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v7}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    invoke-super {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_2

    :cond_0
    neg-float p1, p3

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->startFlingIfNeed(F)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 8

    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    move v1, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    move v1, p3

    :goto_0
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    move v1, p3

    :cond_2
    :goto_1
    sub-int v4, p3, v1

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v6, 0x0

    move v3, p2

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    const/4 p0, 0x1

    aget p1, p4, p0

    add-int/2addr p1, v1

    aput p1, p4, p0

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 8

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result p1

    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    const/4 p4, 0x1

    aget p2, p2, p4

    add-int/2addr p5, p2

    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-gez p5, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-lez p5, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_5

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p2, v0, :cond_2

    iget-boolean p2, p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz p2, :cond_4

    :cond_2
    if-lez p5, :cond_3

    sget-object p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    :goto_1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, p4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    :cond_5
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_6

    if-gez p3, :cond_6

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    :cond_6
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedParent:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iput p3, p1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    and-int/lit8 p1, p3, 0x2

    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    invoke-virtual {p0, p3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->interceptAnimatorByAction(I)Z

    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedParent:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    invoke-virtual {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->overSpinner()V

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public final overSpinner()V
    .locals 6

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    const/16 v4, -0x3e8

    if-le v0, v4, :cond_0

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_10

    iget p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz p0, :cond_10

    iget-object p0, v2, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_10

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_1

    invoke-virtual {v2, v3, v3}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_2
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v4, :cond_5

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iget p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-le v0, p0, :cond_4

    invoke-virtual {v2, p0}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_4
    if-gez v0, :cond_10

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_5
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v5, :cond_6

    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_1

    :cond_6
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v5, :cond_7

    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_1

    :cond_7
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v5, :cond_8

    invoke-virtual {v2, v4}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_1

    :cond_8
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v4, :cond_9

    invoke-virtual {v2, v1}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_1

    :cond_9
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_a

    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_1

    :cond_a
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_10

    iget p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-virtual {v2, p0}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_b
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_10

    iget p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int p0, p0

    invoke-virtual {v2, p0}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_c
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_d

    goto :goto_1

    :cond_d
    iget p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz p0, :cond_10

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_e
    :goto_0
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iget p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int p0, p0

    if-ge v0, p0, :cond_f

    invoke-virtual {v2, p0}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_f
    if-lez v0, :cond_10

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_10
    :goto_1
    return-void
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api21Impl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableDisallowIntercept:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public final setNoMoreData(Z)V
    .locals 6

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefreshWithNoMoreData()V

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v4

    long-to-int p1, v0

    const/16 v0, 0x12c

    rsub-int p1, p1, 0x12c

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 v0, p1, 0x10

    shr-int/lit8 v0, v0, 0x10

    shl-int/lit8 p1, p1, 0x20

    shr-int/lit8 p1, p1, 0x10

    new-instance v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;

    invoke-direct {v1, v0, p0, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;-><init>(ILcom/scwang/smart/refresh/layout/SmartRefreshLayout;Z)V

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->run()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eq v0, p1, :cond_4

    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    instance-of v1, v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v0, p1}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->setNoMoreData(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Footer:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "NoMoreData is not supported. (NoMoreData is not supported, please use [ClassicsFooter] or [custom Footer and implement the setNoMoreData method and return true])"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setRefreshHeader(Lcom/scwang/smart/refresh/header/MaterialHeader;)V
    .locals 4

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smart/refresh/layout/constant/DimensionStatus;

    new-instance v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    :cond_1
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    :cond_3
    return-void
.end method

.method public setStateDirectLoading(Z)V
    .locals 3

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    new-instance p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;-><init>(ILcom/scwang/smart/refresh/layout/SmartRefreshLayout;Z)V

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    float-to-int v0, v0

    check-cast p1, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {p1, p0, v1, v0}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    :cond_1
    return-void
.end method

.method public setStateLoading(Z)V
    .locals 4

    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;-><init>(ILcom/scwang/smart/refresh/layout/SmartRefreshLayout;Z)V

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int p1, p1

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    :cond_1
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    float-to-int v2, v2

    check-cast v1, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v1, p0, v3, v2}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onReleased(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    :cond_2
    if-nez p1, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method public setStateRefreshing(Z)V
    .locals 4

    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;-><init>(ILcom/scwang/smart/refresh/layout/SmartRefreshLayout;Z)V

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    :cond_1
    float-to-int v2, v2

    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    check-cast v1, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v1, p0, v3, v2}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onReleased(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    :cond_2
    if-nez p1, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method public setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    iget-boolean v1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    :cond_1
    return-void
.end method

.method public final startFlingIfNeed(F)Z
    .locals 13

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    int-to-float p1, p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_12

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v3, v1

    mul-float/2addr v3, p1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_c

    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v3, v6, :cond_2

    if-gez v1, :cond_1

    iget-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isReleaseToOpening:Z

    if-eqz v3, :cond_c

    return v5

    :cond_2
    :goto_0
    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;F)V

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    :cond_3
    :goto_1
    move-object v0, v3

    goto/16 :goto_3

    :cond_4
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    const/16 v6, 0xa

    if-eqz v1, :cond_b

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_5
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v7, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v7, :cond_6

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    if-lt p1, v1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v4, :cond_b

    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-le p1, v1, :cond_b

    :cond_8
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    move v4, p1

    :goto_2
    mul-int v7, p1, v4

    if-lez v7, :cond_b

    float-to-double v7, v1

    const v1, 0x3f7ae148    # 0.98f

    float-to-double v9, v1

    add-int/2addr v2, v5

    mul-int/lit8 v1, v2, 0xa

    int-to-float v1, v1

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v1, v11

    float-to-double v11, v1

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v9, v7

    double-to-float v1, v9

    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v7, v9

    mul-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v9, v8

    if-gez v8, :cond_a

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v1, :cond_9

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-gt v4, v2, :cond_3

    :cond_9
    if-eq p1, v1, :cond_b

    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int p1, p1

    if-ge v4, p1, :cond_b

    goto/16 :goto_1

    :cond_a
    int-to-float v4, v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    goto :goto_2

    :cond_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$FlingRunnable;->mStartTime:J

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v1, v6

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    return v5

    :cond_c
    cmpg-float v3, p1, v0

    iget-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    iget-boolean v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-gez v3, :cond_f

    if-eqz v5, :cond_d

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v3, :cond_11

    if-nez v4, :cond_11

    :cond_d
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v3, v6, :cond_e

    if-gez v1, :cond_11

    :cond_e
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_f
    cmpl-float v0, p1, v0

    if-lez v0, :cond_12

    if-eqz v5, :cond_10

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_11

    :cond_10
    if-nez v4, :cond_11

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v0, :cond_12

    :cond_11
    iput-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    neg-float p1, p1

    float-to-int v7, p1

    const v10, -0x7fffffff

    const v11, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_12
    return v2
.end method
