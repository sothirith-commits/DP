.class public final Lcom/lzf/easyfloat/core/TouchUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottomBorder:I

.field public bottomDistance:I

.field public final config:Lcom/lzf/easyfloat/data/FloatConfig;

.field public final context:Landroid/content/Context;

.field public emptyHeight:I

.field public lastX:F

.field public lastY:F

.field public leftBorder:I

.field public leftDistance:I

.field public final location:[I

.field public minX:I

.field public minY:I

.field public parentHeight:I

.field public final parentRect:Landroid/graphics/Rect;

.field public parentWidth:I

.field public rightBorder:I

.field public rightDistance:I

.field public statusBarHeight:I

.field public topBorder:I

.field public topDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lzf/easyfloat/data/FloatConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "config"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->parentRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->location:[I

    return-void
.end method


# virtual methods
.method public final initBoarderValue(Lcom/lzf/easyfloat/widget/ParentFrameLayout;Landroid/view/WindowManager$LayoutParams;)V
    .locals 5

    sget-object v0, Lcom/lzf/easyfloat/utils/DisplayUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/DisplayUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->context:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Landroid/view/WindowManager;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Lcom/lzf/easyfloat/utils/DisplayUtils;->getNavigationBarCurrentHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    iput v2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->parentWidth:I

    iget-object v2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getDisplayHeight()Lcom/lzf/easyfloat/interfaces/OnDisplayHeight;

    move-result-object v3

    check-cast v3, Lcom/lzf/easyfloat/utils/DefaultDisplayHeight;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/lzf/easyfloat/utils/DisplayUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v3, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/lzf/easyfloat/utils/DisplayUtils;->getNavigationBarCurrentHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->parentHeight:I

    iget-object v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->location:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v0, v4

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x0

    if-le v0, p2, :cond_2

    invoke-static {p1}, Lcom/lzf/easyfloat/utils/DisplayUtils;->statusBarHeight(Landroid/view/View;)I

    move-result p2

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    iput p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->statusBarHeight:I

    iget p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->parentHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->statusBarHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->emptyHeight:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getLeftBorder()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->leftBorder:I

    iget p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->parentWidth:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getRightBorder()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->rightBorder:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getShowPattern()Lcom/lzf/easyfloat/enums/ShowPattern;

    move-result-object p2

    sget-object v0, Lcom/lzf/easyfloat/enums/ShowPattern;->CURRENT_ACTIVITY:Lcom/lzf/easyfloat/enums/ShowPattern;

    if-ne p2, v0, :cond_4

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getImmersionStatusBar()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getTopBorder()I

    move-result p2

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getTopBorder()I

    move-result p2

    invoke-static {p1}, Lcom/lzf/easyfloat/utils/DisplayUtils;->statusBarHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getImmersionStatusBar()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getTopBorder()I

    move-result p2

    invoke-static {p1}, Lcom/lzf/easyfloat/utils/DisplayUtils;->statusBarHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getTopBorder()I

    move-result p2

    :goto_3
    iput p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->topBorder:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getShowPattern()Lcom/lzf/easyfloat/enums/ShowPattern;

    move-result-object p2

    if-ne p2, v0, :cond_7

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getImmersionStatusBar()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->emptyHeight:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getBottomBorder()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_4

    :cond_6
    iget p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->emptyHeight:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getBottomBorder()I

    move-result v0

    invoke-static {p1}, Lcom/lzf/easyfloat/utils/DisplayUtils;->statusBarHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getImmersionStatusBar()Z

    move-result p2

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->emptyHeight:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getBottomBorder()I

    move-result v0

    invoke-static {p1}, Lcom/lzf/easyfloat/utils/DisplayUtils;->statusBarHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_4

    :cond_8
    iget p2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->emptyHeight:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getBottomBorder()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_4
    iput p1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomBorder:I

    return-void

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sideAnim(Lcom/lzf/easyfloat/widget/ParentFrameLayout;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V
    .locals 8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->leftBorder:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->leftDistance:I

    iget v2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->rightBorder:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->rightDistance:I

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/lzf/easyfloat/core/TouchUtils;->topBorder:I

    sub-int v3, v0, v3

    iput v3, p0, Lcom/lzf/easyfloat/core/TouchUtils;->topDistance:I

    iget v3, p0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomBorder:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomDistance:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->minX:I

    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->topDistance:I

    iget v1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomDistance:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->minY:I

    iget-object v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getSidePattern()Lcom/lzf/easyfloat/enums/SidePattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->minX:I

    iget v3, p0, Lcom/lzf/easyfloat/core/TouchUtils;->minY:I

    if-ge v0, v3, :cond_1

    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->leftDistance:I

    iget v1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->rightDistance:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->leftBorder:I

    goto :goto_2

    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    add-int/2addr v0, v1

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->topDistance:I

    iget v2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomDistance:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->topBorder:I

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomBorder:I

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->topDistance:I

    iget v2, p0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomDistance:I

    if-ge v0, v2, :cond_3

    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->topBorder:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomBorder:I

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->leftDistance:I

    iget v1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->rightDistance:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->leftBorder:I

    goto :goto_2

    :cond_4
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->bottomBorder:I

    goto :goto_1

    :pswitch_4
    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->topBorder:I

    goto :goto_1

    :pswitch_5
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/lzf/easyfloat/core/TouchUtils;->rightDistance:I

    goto :goto_0

    :pswitch_6
    iget v0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->leftBorder:I

    :goto_2
    if-eqz v2, :cond_5

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_3

    :cond_5
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v7, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;-><init>(ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lcom/lzf/easyfloat/widget/ParentFrameLayout;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p1}, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
