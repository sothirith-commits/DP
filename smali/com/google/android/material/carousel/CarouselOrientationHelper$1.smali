.class public final Lcom/google/android/material/carousel/CarouselOrientationHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public orientation:I

.field public final synthetic val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->orientation:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;-><init>(I)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;-><init>(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final containMaskWithinBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    iget p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    sub-float/2addr v0, p0

    iget p0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->left:F

    iget p0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    :cond_0
    iget p0, p2, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p0, p3

    if-lez v0, :cond_1

    iget v0, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_1

    sub-float/2addr p0, p3

    iget p3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p3, p0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iput p3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p0

    iget p0, p2, Landroid/graphics/RectF;->left:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    :cond_1
    return-void

    :pswitch_0
    iget p0, p2, Landroid/graphics/RectF;->top:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p0, v0

    if-gez v1, :cond_2

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    sub-float/2addr v0, p0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    iget p0, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v0

    iput p0, p3, Landroid/graphics/RectF;->top:F

    :cond_2
    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p0, p3

    if-lez v0, :cond_3

    iget v0, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_3

    sub-float/2addr p0, p3

    iget p3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p3, p0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p0

    iget p0, p2, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMaskMargins(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)F
    .locals 0

    iget p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, p1

    int-to-float p0, p0

    return p0

    :pswitch_0
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    int-to-float p0, p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMaskRect(FFFF)Landroid/graphics/RectF;
    .locals 0

    iget p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroid/graphics/RectF;

    const/4 p3, 0x0

    sub-float/2addr p2, p4

    invoke-direct {p0, p4, p3, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    :pswitch_0
    new-instance p0, Landroid/graphics/RectF;

    const/4 p4, 0x0

    sub-float/2addr p1, p3

    invoke-direct {p0, p4, p3, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentBottom()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentEnd()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentLeft()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentRight()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentStart()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final layoutDecoratedWithMargins(Landroid/view/View;II)V
    .locals 14

    move-object v0, p0

    iget v1, v0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v2, v0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->getParentBottom()I

    move-result v7

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void

    :pswitch_0
    iget-object v8, v0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->getParentRight()I

    move-result v12

    move-object v9, p1

    move/from16 v11, p2

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final moveMaskOnEdgeOutsideBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3

    iget p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget p0, p2, Landroid/graphics/RectF;->right:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-gtz p0, :cond_0

    iget p0, p1, Landroid/graphics/RectF;->right:F

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->left:F

    :cond_0
    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_1

    iget p0, p1, Landroid/graphics/RectF;->left:F

    float-to-double p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p0, p2

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->left:F

    iget p2, p1, Landroid/graphics/RectF;->right:F

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->right:F

    :cond_1
    return-void

    :pswitch_0
    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-gtz p0, :cond_2

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    :cond_2
    iget p0, p2, Landroid/graphics/RectF;->top:F

    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_3

    iget p0, p1, Landroid/graphics/RectF;->top:F

    float-to-double p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p0, p2

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final offsetChild(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .locals 0

    iget p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, p3

    sub-float/2addr p4, p0

    float-to-int p0, p4

    invoke-virtual {p1, p0}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void

    :pswitch_0
    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr p0, p3

    sub-float/2addr p4, p0

    float-to-int p0, p4

    invoke-virtual {p1, p0}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
