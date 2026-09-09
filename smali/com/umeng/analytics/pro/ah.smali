.class public Lcom/umeng/analytics/pro/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/photoview/OnViewTapListener;
.implements Lcom/lzf/easyfloat/interfaces/OnFloatTouchListener;
.implements Lcom/petterp/floatingx/listener/provider/IFxBasicProvider;
.implements Lcom/openos/virtualcar/VirtualServiceReadyListener;
.implements Lcom/umeng/commonsdk/statistics/internal/d;
.implements Lretrofit2/Converter;


# instance fields
.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ","

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/analytics/pro/ai;

    invoke-direct {v3, v2}, Lcom/umeng/analytics/pro/ai;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/umeng/analytics/pro/ai;

    invoke-direct {p1, p0}, Lcom/umeng/analytics/pro/ai;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static getLengthOfDL(I)I
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getLengthOfEncodingDL(IZ)I
    .locals 1

    invoke-static {p0}, Lcom/umeng/analytics/pro/ah;->getLengthOfDL(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static getLengthOfIdentifier(I)I
    .locals 1

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    ushr-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public animSpinner(I)Landroid/animation/ValueAnimator;
    .locals 3

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundInterpolator:Lcom/scwang/smart/refresh/layout/util/SmartUtil;

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mReboundDuration:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/ResponseBody;

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lretrofit2/Converter;

    invoke-interface {p0, p1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getDERSubStream()Lorg/bouncycastle/asn1/DEROutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DEROutputStream;

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/ah;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getDLSubStream()Lorg/bouncycastle/asn1/DLOutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DLOutputStream;

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/ah;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public moveSpinner(IZ)V
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-ne v1, v0, :cond_2

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v1}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->isSupportHorizontalDrag()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v1}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->isSupportHorizontalDrag()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget v8, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iput v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    const/high16 v9, 0x41200000    # 10.0f

    if-eqz p2, :cond_9

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v2, v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v2, :cond_3

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz v1, :cond_9

    :cond_3
    int-to-float v1, v0

    iget v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    cmpg-float v3, v2, v9

    if-gez v3, :cond_4

    iget v3, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    :cond_4
    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_9

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_5
    neg-int v1, v0

    int-to-float v1, v1

    iget v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    cmpg-float v3, v2, v9

    if-gez v3, :cond_6

    iget v3, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    :cond_6
    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    iget-boolean v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v1, :cond_7

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_7
    if-gez v0, :cond_8

    iget-boolean v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_8
    if-lez v0, :cond_9

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_9
    :goto_0
    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    sget-object v10, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    const/4 v12, 0x0

    if-eqz v1, :cond_15

    if-ltz v0, :cond_b

    iget-boolean v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-virtual {v7, v1, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v0

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    if-gez v8, :cond_b

    move v1, v12

    goto :goto_1

    :cond_b
    move v1, v12

    move v2, v1

    :goto_2
    if-gtz v0, :cond_d

    iget-boolean v3, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v4, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-virtual {v7, v3, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v1, v0

    :goto_3
    const/4 v2, 0x1

    goto :goto_4

    :cond_c
    if-lez v8, :cond_d

    move v1, v12

    goto :goto_3

    :cond_d
    :goto_4
    if-eqz v2, :cond_15

    iget-object v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iget v3, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    iget v4, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->moveSpinner(III)V

    iget-boolean v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v2, :cond_e

    iget-object v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    instance-of v3, v2, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v3, :cond_e

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    if-ne v2, v10, :cond_e

    iget-boolean v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v7, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_e
    iget-boolean v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eqz v2, :cond_f

    iget-object v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v2, :cond_f

    invoke-interface {v2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v2

    if-ne v2, v3, :cond_f

    goto :goto_5

    :cond_f
    iget v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v2, :cond_10

    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    :cond_10
    move v2, v12

    :goto_6
    iget-boolean v4, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v4, :cond_11

    iget-object v4, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v4, :cond_11

    invoke-interface {v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v4

    if-ne v4, v3, :cond_11

    goto :goto_7

    :cond_11
    iget v3, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v3, :cond_12

    :goto_7
    const/4 v3, 0x1

    goto :goto_8

    :cond_12
    move v3, v12

    :goto_8
    if-eqz v2, :cond_13

    if-gez v1, :cond_14

    if-gtz v8, :cond_14

    :cond_13
    if-eqz v3, :cond_15

    if-lez v1, :cond_14

    if-gez v8, :cond_15

    :cond_14
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    :cond_15
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    if-gez v0, :cond_16

    if-lez v8, :cond_1f

    :cond_16
    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v1, :cond_1f

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    cmpg-float v2, v1, v9

    if-gez v2, :cond_17

    int-to-float v2, v5

    mul-float/2addr v1, v2

    :cond_17
    float-to-int v6, v1

    int-to-float v1, v4

    mul-float/2addr v1, v13

    iget v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    cmpg-float v3, v2, v9

    if-gez v3, :cond_18

    int-to-float v3, v5

    mul-float/2addr v2, v3

    :cond_18
    div-float v3, v1, v2

    iget-boolean v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v7, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_1f

    if-nez p2, :cond_1f

    :cond_19
    iget v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v8, v1, :cond_1d

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v1

    if-ne v1, v10, :cond_1a

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    iget v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v1, :cond_1c

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1c

    iget-boolean v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-virtual {v7, v1, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto :goto_a

    :cond_1a
    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v1

    iget-boolean v1, v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_1c

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-interface {v1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v15, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_1b

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_9

    :cond_1b
    sget-object v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    iget v11, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v11, v13

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v1, v15, v11}, Landroid/view/View;->measure(II)V

    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v13, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v2, v13

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v2

    invoke-virtual {v1, v11, v2, v13, v15}, Landroid/view/View;->layout(IIII)V

    :cond_1c
    :goto_a
    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    move/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onMoving(ZFIII)V

    :cond_1d
    if-eqz p2, :cond_1f

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    check-cast v1, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v1}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->isSupportHorizontalDrag()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v1, v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v2, :cond_1e

    const/4 v4, 0x1

    goto :goto_b

    :cond_1e
    move v4, v2

    :goto_b
    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    check-cast v4, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v4, v1, v3, v2}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onHorizontalDrag(IFI)V

    :cond_1f
    if-lez v0, :cond_20

    if-gez v8, :cond_29

    :cond_20
    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_29

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    neg-int v3, v0

    iget v4, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    cmpg-float v1, v0, v9

    if-gez v1, :cond_21

    int-to-float v1, v4

    mul-float/2addr v0, v1

    :cond_21
    float-to-int v5, v0

    int-to-float v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    cmpg-float v2, v1, v9

    if-gez v2, :cond_22

    int-to-float v2, v4

    mul-float/2addr v1, v2

    :cond_22
    div-float v2, v0, v1

    iget-boolean v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v7, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_29

    if-nez p2, :cond_29

    :cond_23
    iget v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v8, v0, :cond_27

    iget-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    if-ne v0, v10, :cond_24

    iget-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v0, :cond_26

    iget-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_26

    iget-boolean v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-virtual {v7, v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smart/refresh/layout/api/RefreshComponent;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto :goto_d

    :cond_24
    iget-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v0, :cond_26

    iget-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_25

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_c

    :cond_25
    sget-object v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_c
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v8, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v8, v8

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v8, v9

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/view/View;->measure(II)V

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v1

    iget v1, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v0, v6, v1, v9, v8}, Landroid/view/View;->layout(IIII)V

    :cond_26
    :goto_d
    iget-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    check-cast v0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    move/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onMoving(ZFIII)V

    :cond_27
    if-eqz p2, :cond_29

    iget-object v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    check-cast v0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v0}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->isSupportHorizontalDrag()Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v0, v0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v1, :cond_28

    const/4 v11, 0x1

    goto :goto_e

    :cond_28
    move v11, v1

    :goto_e
    int-to-float v3, v11

    div-float/2addr v2, v3

    iget-object v3, v7, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    check-cast v3, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v3, v0, v2, v1}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onHorizontalDrag(IFI)V

    :cond_29
    return-void
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .locals 2

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lorg/repackage/a/a/a/a/c;

    iget-object v0, p0, Lorg/repackage/a/a/a/a/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V

    iget-object p1, p0, Lorg/repackage/a/a/a/a/c;->e:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    const-string v0, "track_list"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onScale(FFFFF)V
    .locals 2

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 12

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    iget-object v0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->touchUtils:Lcom/lzf/easyfloat/core/TouchUtils;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v2, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget-object v4, v0, Lcom/lzf/easyfloat/core/TouchUtils;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object v5

    if-nez v5, :cond_18

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getDragEnable()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->isAnim()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    if-eqz v5, :cond_15

    const/4 v7, 0x1

    if-eq v5, v7, :cond_11

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    const/4 p1, 0x3

    if-eq v5, p1, :cond_11

    goto/16 :goto_9

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->leftBorder:I

    int-to-float v9, v9

    cmpg-float v5, v5, v9

    if-ltz v5, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->rightBorder:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    cmpl-float v5, v5, v9

    if-gtz v5, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->topBorder:I

    int-to-float v9, v9

    cmpg-float v5, v5, v9

    if-ltz v5, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomBorder:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    cmpl-float v5, v5, v9

    if-lez v5, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->lastX:F

    sub-float/2addr v5, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, v0, Lcom/lzf/easyfloat/core/TouchUtils;->lastY:F

    sub-float/2addr v9, v10

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->isDrag()Z

    move-result v10

    if-nez v10, :cond_3

    mul-float v10, v5, v5

    mul-float v11, v9, v9

    add-float/2addr v11, v10

    const/high16 v10, 0x42a20000    # 81.0f

    cmpg-float v10, v11, v10

    if-gez v10, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v4, v7}, Lcom/lzf/easyfloat/data/FloatConfig;->setDrag(Z)V

    iget v7, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    float-to-int v5, v5

    add-int/2addr v7, v5

    iget v5, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    float-to-int v9, v9

    add-int/2addr v5, v9

    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->leftBorder:I

    if-ge v7, v9, :cond_4

    :goto_0
    move v7, v9

    goto :goto_1

    :cond_4
    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->rightBorder:I

    if-le v7, v9, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getShowPattern()Lcom/lzf/easyfloat/enums/ShowPattern;

    move-result-object v9

    sget-object v10, Lcom/lzf/easyfloat/enums/ShowPattern;->CURRENT_ACTIVITY:Lcom/lzf/easyfloat/enums/ShowPattern;

    if-ne v9, v10, :cond_6

    sget-object v9, Lcom/lzf/easyfloat/utils/DisplayUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/DisplayUtils;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/lzf/easyfloat/utils/DisplayUtils;->statusBarHeight(Landroid/view/View;)I

    move-result v9

    if-ge v5, v9, :cond_6

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getImmersionStatusBar()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v2}, Lcom/lzf/easyfloat/utils/DisplayUtils;->statusBarHeight(Landroid/view/View;)I

    move-result v5

    :cond_6
    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->topBorder:I

    if-ge v5, v9, :cond_7

    :goto_2
    move v5, v9

    goto :goto_3

    :cond_7
    if-gez v5, :cond_9

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getImmersionStatusBar()Z

    move-result v9

    if-eqz v9, :cond_8

    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->statusBarHeight:I

    neg-int v9, v9

    if-ge v5, v9, :cond_a

    goto :goto_2

    :cond_8
    move v5, v6

    goto :goto_3

    :cond_9
    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomBorder:I

    if-le v5, v9, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getSidePattern()Lcom/lzf/easyfloat/enums/SidePattern;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    iget-object v10, v0, Lcom/lzf/easyfloat/core/TouchUtils;->parentRect:Landroid/graphics/Rect;

    packed-switch v9, :pswitch_data_0

    :goto_4
    move v6, v7

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->leftDistance:I

    iget v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->parentWidth:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->rightDistance:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iget v9, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->topDistance:I

    iget v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->parentHeight:I

    add-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomDistance:I

    iget v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->leftDistance:I

    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->rightDistance:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->minX:I

    iget v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->topDistance:I

    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomDistance:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->minY:I

    iget v9, v0, Lcom/lzf/easyfloat/core/TouchUtils;->minX:I

    if-ge v9, v8, :cond_c

    iget v7, v0, Lcom/lzf/easyfloat/core/TouchUtils;->leftDistance:I

    if-ne v7, v9, :cond_b

    goto :goto_7

    :cond_b
    iget v6, v0, Lcom/lzf/easyfloat/core/TouchUtils;->parentWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    goto :goto_6

    :cond_c
    iget v5, v0, Lcom/lzf/easyfloat/core/TouchUtils;->topDistance:I

    if-ne v5, v8, :cond_d

    goto :goto_5

    :cond_d
    iget v6, v0, Lcom/lzf/easyfloat/core/TouchUtils;->emptyHeight:I

    :cond_e
    :goto_5
    :pswitch_1
    move v5, v6

    goto :goto_4

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v9, v10, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    int-to-float v8, v8

    mul-float/2addr v5, v8

    iget v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->parentHeight:I

    int-to-float v9, v8

    cmpl-float v5, v5, v9

    if-lez v5, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v6, v8, v5

    goto :goto_5

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/lzf/easyfloat/core/TouchUtils;->parentWidth:I

    int-to-float v9, v8

    cmpl-float v7, v7, v9

    if-lez v7, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v8, v6

    goto :goto_7

    :pswitch_4
    iget v6, v0, Lcom/lzf/easyfloat/core/TouchUtils;->emptyHeight:I

    goto :goto_5

    :pswitch_5
    iget v6, v0, Lcom/lzf/easyfloat/core/TouchUtils;->parentWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    :goto_6
    sub-int/2addr v6, v7

    :cond_f
    :goto_7
    :pswitch_6
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v3, v2, p0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object p0

    if-nez p0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v0, Lcom/lzf/easyfloat/core/TouchUtils;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iput p0, v0, Lcom/lzf/easyfloat/core/TouchUtils;->lastY:F

    goto :goto_9

    :cond_10
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    throw v1

    :cond_11
    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->isDrag()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object p1

    if-nez p1, :cond_14

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getSidePattern()Lcom/lzf/easyfloat/enums/SidePattern;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    invoke-virtual {v4}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_9

    :cond_13
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    throw v1

    :pswitch_7
    invoke-virtual {v0, v2, p0, v3}, Lcom/lzf/easyfloat/core/TouchUtils;->sideAnim(Lcom/lzf/easyfloat/widget/ParentFrameLayout;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V

    goto :goto_9

    :cond_14
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    throw v1

    :cond_15
    invoke-virtual {v4, v6}, Lcom/lzf/easyfloat/data/FloatConfig;->setDrag(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lcom/lzf/easyfloat/core/TouchUtils;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v0, Lcom/lzf/easyfloat/core/TouchUtils;->lastY:F

    invoke-virtual {v0, v2, p0}, Lcom/lzf/easyfloat/core/TouchUtils;->initBoarderValue(Lcom/lzf/easyfloat/widget/ParentFrameLayout;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_9

    :cond_16
    :goto_8
    invoke-virtual {v4, v6}, Lcom/lzf/easyfloat/data/FloatConfig;->setDrag(Z)V

    :cond_17
    :goto_9
    return-void

    :cond_18
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    throw v1

    :cond_19
    const-string p0, "touchUtils"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onViewTap()V
    .locals 0

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public serviceReadyFailed()V
    .locals 4

    const-string v0, "VirtualCarManagerImpl"

    const-string v1, "serviceReadyFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "VirtualCarManagerImpl"

    const-string v1, "onCarInitFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mCarInitListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mCarInitListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "HvacManager"

    const-string v3, "onCarInitFailed..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mIsCarInitSuccess:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public serviceReadySuccess()V
    .locals 3

    const-string v0, "VirtualCarManagerImpl"

    const-string v1, "serviceReadySuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    iget-object v0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mVirtualCar:Lcom/openos/virtualcar/VirtualCar;

    invoke-virtual {v0}, Lcom/openos/virtualcar/VirtualCar;->getVirtualCarManager()Lcom/openos/virtualcar/VirtualCarPropertyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    iget-object v0, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mCarInitListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mCarInitListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    invoke-virtual {v2}, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->onCarInitSuccess()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;->mIsCarInitSuccess:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v2, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v2, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v2, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p0, :cond_0

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p0, :cond_1

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :cond_1
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p0, :cond_2

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :cond_2
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :pswitch_6
    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_4

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez p0, :cond_4

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p0, :cond_3

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p0, :cond_3

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p0, :cond_4

    :cond_3
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :cond_4
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p0, :cond_5

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :cond_5
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :pswitch_8
    iget-boolean p1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v2, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_7

    iget-boolean p1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_6

    iget-boolean p1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_6

    iget-boolean p1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p1, :cond_7

    :cond_6
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :cond_7
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object p1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_8

    iget-boolean p1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ah;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :pswitch_a
    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_a

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez p0, :cond_a

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p0, :cond_9

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p0, :cond_9

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p0, :cond_a

    :cond_9
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_a
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :pswitch_b
    iget-object p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p0, :cond_b

    iget-boolean p0, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_b
    sget-object p0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :pswitch_c
    iget-object p1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_c

    iget p1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez p1, :cond_c

    invoke-virtual {v2, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    :cond_c
    iget p1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ah;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_d
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public write(I)V
    .locals 0

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeDL(I)V
    .locals 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ah;->write(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    new-array v2, v1, [B

    :goto_0
    add-int/lit8 v3, v1, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    ushr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    rsub-int/lit8 p1, v3, 0x5

    add-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    rsub-int/lit8 p1, v3, 0x6

    invoke-virtual {p0, v2, v1, p1}, Lcom/umeng/analytics/pro/ah;->write([BII)V

    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public writeElements([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/umeng/analytics/pro/ah;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeEncodingDL(ZI[B)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/umeng/analytics/pro/ah;->writeIdentifier(IZ)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ah;->writeDL(I)V

    const/4 p1, 0x0

    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/umeng/analytics/pro/ah;->write([BII)V

    return-void
.end method

.method public writeEncodingIL(ZI[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/umeng/analytics/pro/ah;->writeIdentifier(IZ)V

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ah;->write(I)V

    invoke-virtual {p0, p3}, Lcom/umeng/analytics/pro/ah;->writeElements([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ah;->write(I)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ah;->write(I)V

    return-void
.end method

.method public writeIdentifier(II)V
    .locals 4

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_0

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ah;->write(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x6

    new-array v1, v1, [B

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    :goto_0
    const/16 v2, 0x7f

    if-le p2, v2, :cond_1

    ushr-int/lit8 p2, p2, 0x7

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    rsub-int/lit8 p1, v3, 0x6

    invoke-virtual {p0, v1, v3, p1}, Lcom/umeng/analytics/pro/ah;->write([BII)V

    :goto_1
    return-void
.end method

.method public writeIdentifier(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/ah;->write(I)V

    :cond_0
    return-void
.end method

.method public writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/umeng/analytics/pro/ah;Z)V

    return-void
.end method

.method public writePrimitives([Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/umeng/analytics/pro/ah;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
