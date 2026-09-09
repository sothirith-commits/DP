.class public Lcom/flyco/tablayout/SegmentTabLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public mCurrentTab:I

.field public mDividerColor:I

.field public mIndicatorAnimDuration:J

.field public mIndicatorAnimEnable:Z

.field public mIndicatorColor:I

.field public mTextBold:I

.field public mTextSelectColor:I

.field public mTextUnselectColor:I


# virtual methods
.method public getCurrentTab()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mCurrentTab:I

    return p0
.end method

.method public getDividerColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mDividerColor:I

    return p0
.end method

.method public getDividerPadding()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDividerWidth()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIndicatorAnimDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mIndicatorAnimDuration:J

    return-wide v0
.end method

.method public getIndicatorColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mIndicatorColor:I

    return p0
.end method

.method public getIndicatorCornerRadius()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIndicatorHeight()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIndicatorMarginBottom()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIndicatorMarginLeft()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIndicatorMarginRight()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIndicatorMarginTop()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTabCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTabPadding()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTabWidth()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTextBold()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mTextBold:I

    return p0
.end method

.method public getTextSelectColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mTextSelectColor:I

    return p0
.end method

.method public getTextUnselectColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mTextUnselectColor:I

    return p0
.end method

.method public getTextsize()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mCurrentTab"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mCurrentTab:I

    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mCurrentTab:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "mCurrentTab"

    iget p0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mCurrentTab:I

    iget-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public setDividerColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mDividerColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerPadding(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setDividerWidth(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mIndicatorAnimDuration:J

    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mIndicatorAnimEnable:Z

    return-void
.end method

.method public setIndicatorBounceEnable(Z)V
    .locals 0

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setIndicatorHeight(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setOnTabSelectListener(Lcom/flyco/tablayout/listener/OnTabSelectListener;)V
    .locals 0

    return-void
.end method

.method public setTabData([Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Titles can not be NULL or EMPTY !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTabPadding(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0

    return-void
.end method

.method public setTabWidth(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    return-void
.end method

.method public setTextBold(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mTextBold:I

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mTextSelectColor:I

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->mTextUnselectColor:I

    return-void
.end method

.method public setTextsize(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
