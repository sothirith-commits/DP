.class public final Lcom/lzf/easyfloat/anim/DefaultAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lzf/easyfloat/interfaces/OnFloatAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimator(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lcom/lzf/easyfloat/enums/SidePattern;Z)Landroid/animation/ValueAnimator;
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v4, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    if-gt v5, v6, :cond_1

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_0
    neg-int v0, v0

    :goto_1
    move v7, v8

    goto :goto_4

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_2
    neg-int v0, v0

    goto :goto_4

    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Lcom/lzf/easyfloat/anim/DefaultAnimator;->getCompensationHeight(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    goto :goto_4

    :pswitch_1
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Lcom/lzf/easyfloat/anim/DefaultAnimator;->getCompensationHeight(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    goto :goto_3

    :pswitch_2
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Lcom/lzf/easyfloat/anim/DefaultAnimator;->getCompensationHeight(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    goto :goto_3

    :pswitch_3
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_2

    :pswitch_4
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_5
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :pswitch_6
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_4
    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :goto_4
    new-instance v2, Lkotlin/Triple;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v0, p3, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p4, :cond_5

    invoke-virtual {v2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p3

    :goto_5
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    goto :goto_6

    :cond_5
    invoke-virtual {v2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object p3

    goto :goto_5

    :goto_6
    if-eqz p4, :cond_6

    invoke-virtual {v2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object p4

    :goto_7
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    goto :goto_8

    :cond_6
    invoke-virtual {v2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p4

    goto :goto_7

    :goto_8
    filled-new-array {p3, p4}, [I

    move-result-object p3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance p4, Lcom/lzf/easyfloat/anim/DefaultAnimator$$ExternalSyntheticLambda0;

    move-object v1, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lzf/easyfloat/anim/DefaultAnimator$$ExternalSyntheticLambda0;-><init>(Lkotlin/Triple;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public static getCompensationHeight(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v0, p1, :cond_0

    sget-object p1, Lcom/lzf/easyfloat/utils/DisplayUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/DisplayUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/lzf/easyfloat/utils/DisplayUtils;->statusBarHeight(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
