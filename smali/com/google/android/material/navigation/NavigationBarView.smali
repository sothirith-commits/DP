.class public abstract Lcom/google/android/material/navigation/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public menuInflater:Landroidx/appcompat/view/SupportMenuInflater;


# direct methods
.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    return-object p0
.end method


# virtual methods
.method public getActiveIndicatorLabelPadding()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemBackgroundResource()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemIconSize()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemPaddingBottom()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemPaddingTop()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMenuView()Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPresenter()Lcom/google/android/material/navigation/NavigationBarPresenter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    iget-object p1, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    new-instance v0, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    invoke-direct {v0, p0}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iput-object p0, v0, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    const/4 p0, 0x0

    throw p0
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemBackgroundResource(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemIconSize(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemPaddingBottom(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemPaddingTop(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setOnItemReselectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;)V
    .locals 0

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V
    .locals 0

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
