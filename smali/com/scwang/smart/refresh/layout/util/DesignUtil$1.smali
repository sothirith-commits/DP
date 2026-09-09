.class public final Lcom/scwang/smart/refresh/layout/util/DesignUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$listener:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/scwang/smart/refresh/layout/util/DesignUtil$1;->$r8$classId:I

    iput-object p2, p0, Lcom/scwang/smart/refresh/layout/util/DesignUtil$1;->val$listener:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/util/DesignUtil$1;->val$listener:Ljava/lang/Object;

    const/4 v2, 0x1

    iget p0, p0, Lcom/scwang/smart/refresh/layout/util/DesignUtil$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput p2, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    move p1, v0

    :goto_0
    if-ge p1, p0, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-static {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v5

    iget v6, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    if-eq v6, v2, :cond_1

    const/4 v3, 0x2

    if-eq v6, v3, :cond_0

    goto :goto_1

    :cond_0
    neg-int v3, p2

    int-to-float v3, v3

    iget v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_1

    :cond_1
    neg-int v4, p2

    invoke-static {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v6, v6, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    sub-int/2addr v8, v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v8, v3

    iget v3, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v3

    invoke-static {v4, v0, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    :goto_1
    add-int/2addr p1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p0

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    sub-int p1, p0, p1

    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result p2

    sub-int/2addr p0, p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    if-ltz p2, :cond_3

    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    add-int/2addr p1, p2

    if-gtz p1, :cond_4

    move v0, v2

    :cond_4
    check-cast v1, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;

    iput-boolean p0, v1, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mEnableRefresh:Z

    iput-boolean v0, v1, Lcom/scwang/smart/refresh/layout/wrapper/RefreshContentWrapper;->mEnableLoadMore:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
