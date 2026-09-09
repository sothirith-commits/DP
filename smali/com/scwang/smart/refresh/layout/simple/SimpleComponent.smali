.class public abstract Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/api/RefreshComponent;


# instance fields
.field public mSpinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

.field public final mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

.field public final mWrappedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedView:Landroid/view/View;

    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of p1, p0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_1

    instance-of p1, v0, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p1

    if-ne p1, v1, :cond_1

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_1
    instance-of p0, p0, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz p0, :cond_2

    instance-of p0, v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p0

    if-ne p0, v1, :cond_2

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p1, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    invoke-interface {p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getView()Landroid/view/View;

    move-result-object p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;
    .locals 4

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mSpinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-interface {v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->getSpinnerStyle()Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mSpinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_5

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    :cond_3
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    iget-boolean v3, v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v3, :cond_4

    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mSpinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    return-object v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mSpinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final isSupportHorizontalDrag()Z
    .locals 1

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    check-cast v0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v0}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->isSupportHorizontalDrag()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I
    .locals 1

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onHorizontalDrag(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    check-cast v0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onHorizontalDrag(IFI)V

    :cond_0
    return-void
.end method

.method public onInitialized(Lcom/umeng/analytics/pro/ah;II)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onInitialized(Lcom/umeng/analytics/pro/ah;II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedView:Landroid/view/View;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p3, p2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    if-eqz p3, :cond_3

    check-cast p2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    iget p2, p2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;->backgroundColor:I

    iget-object p1, p1, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p3, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    :cond_1
    iget-object p3, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-virtual {p0, p3}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iput p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    goto :goto_0

    :cond_2
    iget-object p3, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-virtual {p0, p3}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iput p2, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    :cond_3
    :goto_0
    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 6

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onMoving(ZFIII)V

    :cond_0
    return-void
.end method

.method public final onReleased(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    check-cast v0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onReleased(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    :cond_0
    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_4

    instance-of v1, p0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz v1, :cond_1

    iget-boolean p0, p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    iget-boolean p0, p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isTwoLevel:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->values()[Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p0, p2

    :cond_0
    iget-boolean p0, p3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz p0, :cond_3

    if-eqz p0, :cond_3

    iget-boolean p0, p3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isTwoLevel:Z

    if-nez p0, :cond_3

    invoke-static {}, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->values()[Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    aget-object p3, p0, p3

    goto :goto_0

    :cond_1
    instance-of p0, p0, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz p0, :cond_3

    instance-of p0, v0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz p0, :cond_3

    iget-boolean p0, p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz p0, :cond_2

    if-eqz p0, :cond_2

    iget-boolean p0, p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isTwoLevel:Z

    if-nez p0, :cond_2

    invoke-static {}, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->values()[Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    aget-object p2, p0, p2

    :cond_2
    iget-boolean p0, p3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz p0, :cond_3

    if-eqz p0, :cond_3

    iget-boolean p0, p3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isTwoLevel:Z

    if-nez p0, :cond_3

    invoke-static {}, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->values()[Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    aget-object p3, p0, p3

    :cond_3
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_4
    return-void
.end method

.method public final setNoMoreData(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    instance-of v0, p0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    check-cast p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->setNoMoreData(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mWrappedInternal:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
