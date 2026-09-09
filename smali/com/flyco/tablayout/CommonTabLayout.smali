.class public Lcom/flyco/tablayout/CommonTabLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public mCurrentTab:I

.field public mDividerColor:I

.field public mIconGravity:I

.field public mIndicatorAnimDuration:J

.field public mIndicatorAnimEnable:Z

.field public mIndicatorColor:I

.field public mIndicatorStyle:I

.field public mTextBold:I

.field public mTextSelectColor:I

.field public mTextUnselectColor:I

.field public mUnderlineColor:I


# virtual methods
.method public getCurrentTab()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mCurrentTab:I

    return p0
.end method

.method public getDividerColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mDividerColor:I

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

.method public getIconGravity()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mIconGravity:I

    return p0
.end method

.method public getIconHeight()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconMargin()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconWidth()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIndicatorAnimDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mIndicatorAnimDuration:J

    return-wide v0
.end method

.method public getIndicatorColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mIndicatorColor:I

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

.method public getIndicatorStyle()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mIndicatorStyle:I

    return p0
.end method

.method public getIndicatorWidth()F
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

    iget p0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mTextBold:I

    return p0
.end method

.method public getTextSelectColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mTextSelectColor:I

    return p0
.end method

.method public getTextUnselectColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mTextUnselectColor:I

    return p0
.end method

.method public getTextsize()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUnderlineColor()I
    .locals 0

    iget p0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mUnderlineColor:I

    return p0
.end method

.method public getUnderlineHeight()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

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

    iput v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mCurrentTab:I

    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iget v0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mCurrentTab:I

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

    iget p0, p0, Lcom/flyco/tablayout/CommonTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mCurrentTab:I

    iget-boolean p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mIndicatorAnimEnable:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public setDividerColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mDividerColor:I

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

.method public setIconGravity(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mIconGravity:I

    const/4 p0, 0x0

    throw p0
.end method

.method public setIconHeight(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setIconMargin(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setIconVisible(Z)V
    .locals 0

    return-void
.end method

.method public setIconWidth(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mIndicatorAnimDuration:J

    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mIndicatorAnimEnable:Z

    return-void
.end method

.method public setIndicatorBounceEnable(Z)V
    .locals 0

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mIndicatorColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setIndicatorGravity(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setIndicatorStyle(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mIndicatorStyle:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setOnTabSelectListener(Lcom/flyco/tablayout/listener/OnTabSelectListener;)V
    .locals 0

    return-void
.end method

.method public setTabData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "TabEntitys can not be NULL or EMPTY !"

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

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mTextBold:I

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mTextSelectColor:I

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mTextUnselectColor:I

    return-void
.end method

.method public setTextsize(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setUnderlineColor(I)V
    .locals 0

    iput p1, p0, Lcom/flyco/tablayout/CommonTabLayout;->mUnderlineColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnderlineGravity(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final updateTabStyles()V
    .locals 0

    return-void
.end method
