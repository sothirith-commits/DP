.class public final Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"


# instance fields
.field public cellBorders:[I

.field public cellHeight:I

.field public cells:Landroid/util/SparseArray;

.field public firstChildPositionForRow:Ljava/util/ArrayList;

.field public firstVisibleItemPosition:I

.field public firstVisibleRow:I

.field public forceClearOffsets:Z

.field public lastVisiblePosition:I

.field public lastVisibleRow:I

.field public totalRows:I


# virtual methods
.method public final checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    const-string p0, "lp"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$LayoutParams;

    return p0
.end method

.method public final computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "state"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    const-string v0, "state"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p1

    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    iget v2, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    sub-int v0, v1, p0

    :goto_0
    return v0
.end method

.method public final computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "state"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstChildPositionForRow:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cellHeight:I

    mul-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final findViewByPosition(I)Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleItemPosition:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisiblePosition:I

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    const-string p0, "c"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "attrs"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    const-string p0, "lp"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public final getFirstPositionInSpannedRow(I)I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstChildPositionForRow:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getLastPositionInSpannedRow(ILandroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result v0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstChildPositionForRow:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstChildPositionForRow:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result p0

    :goto_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    goto :goto_1

    :goto_2
    return p0
.end method

.method public final getRowIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cells:Landroid/util/SparseArray;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cells:Landroid/util/SparseArray;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;

    iget p0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;->row:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final layoutRow(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result v0

    invoke-virtual {p0, p1, p3}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getLastPositionInSpannedRow(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p3

    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    :goto_0
    if-gt v0, p3, :cond_2

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {p2, v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p3, "getViewForPosition(...)"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const-string v1, "null cannot be cast to non-null type com.deepalhome.launcher.view.SpannableGridLayoutManager.LayoutParams"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p3, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$LayoutParams;

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    iget-object v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cells:Landroid/util/SparseArray;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cellBorders:[I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget v3, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;->column:I

    iget v4, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;->columnSpan:I

    add-int/2addr v4, v3

    aget v4, p1, v4

    aget p1, p1, v3

    sub-int/2addr v4, p1

    iget p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v4, v3, v2, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    iget p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cellHeight:I

    iget v0, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;->rowSpan:I

    mul-int/2addr v0, p1

    iget p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p3, 0x1

    invoke-static {v0, v3, v2, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    invoke-virtual {p0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    throw v1

    :cond_1
    const-string p0, "cellBorders"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleItemPosition:I

    if-ge v0, p1, :cond_3

    iput v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleItemPosition:I

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getRowIndex(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    :cond_3
    iget p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisiblePosition:I

    if-le p3, p1, :cond_4

    iput p3, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisiblePosition:I

    invoke-virtual {p0, p3}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getRowIndex(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisibleRow:I

    :cond_4
    iget-object p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cells:Landroid/util/SparseArray;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;

    iget-object p2, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cells:Landroid/util/SparseArray;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;

    iget p3, p2, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;->row:I

    iget p2, p2, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;->rowSpan:I

    add-int/2addr p3, p2

    iget p1, p1, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;->row:I

    sub-int/2addr p3, p1

    iget p0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cellHeight:I

    mul-int/2addr p3, p0

    return p3
.end method

.method public final onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cells:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstChildPositionForRow:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleItemPosition:I

    iput p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    iput p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisiblePosition:I

    iput p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisibleRow:I

    iput p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cellHeight:I

    iput-boolean p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->forceClearOffsets:Z

    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "recycler"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "state"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    div-int/2addr v3, v4

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    iput v3, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cellHeight:I

    const/4 v3, 0x1

    new-array v5, v3, [I

    iput-object v5, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cellBorders:[I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    iget-object v7, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cellBorders:[I

    const/4 v8, 0x0

    if-eqz v7, :cond_e

    aput v6, v7, v4

    div-int/lit8 v6, v5, 0x0

    rem-int/2addr v5, v4

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v6, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cells:Landroid/util/SparseArray;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstChildPositionForRow:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v4}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->recordSpannedRowStartPosition(II)V

    new-array v6, v4, [I

    move v7, v4

    move v9, v7

    move v10, v9

    :goto_0
    if-ge v7, v5, :cond_8

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    move v12, v4

    :goto_1
    if-ge v12, v11, :cond_1

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    if-ne v7, v14, :cond_0

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type com.deepalhome.launcher.view.SpannableGridLayoutManager.LayoutParams"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$LayoutParams;

    new-instance v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;

    invoke-direct {v11, v4, v4}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;-><init>(II)V

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    sget-object v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->Companion:Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->SINGLE_CELL:Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;

    :goto_2
    iget v12, v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->columnSpan:I

    if-lez v12, :cond_2

    iput v4, v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->columnSpan:I

    :cond_2
    iget v12, v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->columnSpan:I

    add-int/2addr v12, v9

    if-lez v12, :cond_3

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10, v7}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->recordSpannedRowStartPosition(II)V

    :goto_3
    move v9, v4

    :cond_3
    aget v12, v6, v9

    if-le v12, v10, :cond_4

    add-int/lit8 v9, v9, 0x1

    iget v12, v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->columnSpan:I

    add-int/2addr v12, v9

    if-lez v12, :cond_3

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10, v7}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->recordSpannedRowStartPosition(II)V

    goto :goto_3

    :cond_4
    iget-object v12, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cells:Landroid/util/SparseArray;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v13, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;

    iget v14, v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->columnSpan:I

    iget v15, v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->rowSpan:I

    invoke-direct {v13, v10, v15, v9, v14}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$GridCell;-><init>(IIII)V

    invoke-virtual {v12, v7, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v12, v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->columnSpan:I

    move v13, v4

    :goto_4
    if-ge v13, v12, :cond_5

    add-int v14, v9, v13

    add-int v16, v10, v15

    aput v16, v6, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_5
    if-le v15, v3, :cond_6

    invoke-virtual {v0, v10}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result v12

    move v13, v3

    :goto_5
    if-ge v13, v15, :cond_6

    add-int v14, v10, v13

    invoke-virtual {v0, v14, v12}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->recordSpannedRowStartPosition(II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_6
    iget v11, v11, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager$SpanInfo;->columnSpan:I

    add-int/2addr v9, v11

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw v8

    :cond_8
    aget v5, v6, v4

    iput v5, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->totalRows:I

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iput v4, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->resetVisibleItemTracking()V

    return-void

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    iget-boolean v5, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->forceClearOffsets:Z

    if-eqz v5, :cond_a

    iput-boolean v4, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->forceClearOffsets:Z

    goto :goto_6

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->resetVisibleItemTracking()V

    :cond_b
    :goto_6
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget v5, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    :cond_c
    if-lez v6, :cond_d

    iget v3, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisiblePosition:I

    if-ge v3, v4, :cond_d

    invoke-virtual {v0, v5, v1, v2}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->layoutRow(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v3

    sub-int/2addr v6, v3

    invoke-virtual {v0, v5}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result v3

    :goto_7
    add-int/lit8 v5, v5, 0x1

    iget-object v7, v0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstChildPositionForRow:Ljava/util/ArrayList;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_c

    invoke-virtual {v0, v5}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result v7

    if-ne v7, v3, :cond_c

    goto :goto_7

    :cond_d
    return-void

    :cond_e
    const-string v0, "cellBorders"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8
.end method

.method public final recordSpannedRowStartPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstChildPositionForRow:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    if-ge v0, p1, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstChildPositionForRow:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final recycleRow(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result v0

    invoke-virtual {p0, p1, p3}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getLastPositionInSpannedRow(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p3

    move v1, p3

    :goto_0
    if-lt v1, v0, :cond_0

    iget v2, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleItemPosition:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    if-ne p1, p2, :cond_1

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleItemPosition:I

    invoke-virtual {p0, p3}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getRowIndex(I)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    :cond_1
    iget p2, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisibleRow:I

    if-ne p1, p2, :cond_2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisiblePosition:I

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getRowIndex(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisibleRow:I

    :cond_2
    return-void
.end method

.method public final resetVisibleItemTracking()V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->cellHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->totalRows:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getRowIndex(I)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    if-le v1, v0, :cond_1

    iput v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    :cond_1
    iget v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleItemPosition:I

    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    iput v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisibleRow:I

    iput v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisiblePosition:I

    return-void
.end method

.method public final scrollToPosition(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getRowIndex(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->resetVisibleItemTracking()V

    iput-boolean v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->forceClearOffsets:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    const-string v0, "recycler"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "state"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    if-gez p1, :cond_3

    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v1, v0

    neg-int v1, v1

    int-to-double v2, p1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int p1, v1

    :cond_1
    sub-int/2addr v0, p1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0, p2, p3}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->layoutRow(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    :cond_2
    iget v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisibleRow:I

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getFirstPositionInSpannedRow(I)I

    move-result v0

    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleItemPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisibleRow:I

    invoke-virtual {p0, v0, p2, p3}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->recycleRow(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisiblePosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    int-to-double v1, v2

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v2, p1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int p1, v1

    :cond_4
    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->lastVisibleRow:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstChildPositionForRow:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0, p2, p3}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->layoutRow(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    :cond_5
    iget v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    invoke-virtual {p0, v0, p3}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->getLastPositionInSpannedRow(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    iget v1, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleItemPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, p1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->firstVisibleRow:I

    invoke-virtual {p0, v0, p2, p3}, Lcom/deepalhome/launcher/view/SpannableGridLayoutManager;->recycleRow(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    :cond_6
    :goto_0
    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    return p1

    :cond_7
    :goto_1
    return v1
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "state"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    if-lt p3, p2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/google/android/material/carousel/CarouselLayoutManager$1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
