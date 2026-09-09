.class public final Lcom/lzf/easyfloat/widget/ParentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field public final config:Lcom/lzf/easyfloat/data/FloatConfig;

.field public isCreated:Z

.field public layoutListener:Lcom/lzf/easyfloat/widget/ParentFrameLayout$OnLayoutListener;

.field public touchListener:Lcom/lzf/easyfloat/interfaces/OnFloatTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lzf/easyfloat/data/FloatConfig;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "config"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    return-void
.end method


# virtual methods
.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getHasEditText()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lzf/easyfloat/utils/InputMethodUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/InputMethodUtils;

    sget-object v1, Lcom/lzf/easyfloat/core/FloatingWindowManager;->INSTANCE:Lcom/lzf/easyfloat/core/FloatingWindowManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/lzf/easyfloat/core/FloatingWindowManager;->getHelper(Ljava/lang/String;)Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, v0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-virtual {v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final getLayoutListener()Lcom/lzf/easyfloat/widget/ParentFrameLayout$OnLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->layoutListener:Lcom/lzf/easyfloat/widget/ParentFrameLayout$OnLayoutListener;

    return-object p0
.end method

.method public final getTouchListener()Lcom/lzf/easyfloat/interfaces/OnFloatTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->touchListener:Lcom/lzf/easyfloat/interfaces/OnFloatTouchListener;

    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {p0}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    invoke-virtual {p0}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->touchListener:Lcom/lzf/easyfloat/interfaces/OnFloatTouchListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/ah;->onTouch(Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->isDrag()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean v4, v0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->isCreated:Z

    if-nez v4, :cond_29

    iput-boolean v3, v0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->isCreated:Z

    iget-object v0, v0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->layoutListener:Lcom/lzf/easyfloat/widget/ParentFrameLayout$OnLayoutListener;

    if-nez v0, :cond_0

    goto/16 :goto_11

    :cond_0
    check-cast v0, Landroidx/cardview/widget/CardView$1;

    iget-object v4, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    iget-object v5, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    iget-object v6, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getLocationPair()Lkotlin/Pair;

    move-result-object v7

    new-instance v8, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    new-array v8, v1, [I

    invoke-virtual {v5, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v8, v8, v3

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v8, v9, :cond_2

    sget-object v8, Lcom/lzf/easyfloat/utils/DisplayUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/DisplayUtils;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/lzf/easyfloat/utils/DisplayUtils;->statusBarHeight(Landroid/view/View;)I

    move-result v8

    goto :goto_0

    :cond_2
    move v8, v2

    :goto_0
    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getDisplayHeight()Lcom/lzf/easyfloat/interfaces/OnDisplayHeight;

    move-result-object v9

    check-cast v9, Lcom/lzf/easyfloat/utils/DefaultDisplayHeight;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "context"

    iget-object v10, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->context:Landroid/content/Context;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, Lcom/lzf/easyfloat/utils/DisplayUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/DisplayUtils;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/lzf/easyfloat/utils/DisplayUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v9

    iget v11, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-le v11, v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v10}, Lcom/lzf/easyfloat/utils/DisplayUtils;->getNavigationBarCurrentHeight(Landroid/content/Context;)I

    move-result v10

    sub-int/2addr v9, v10

    :goto_1
    sub-int/2addr v9, v8

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getGravity()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v7, v11

    iput v7, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v7, v11

    shr-int/2addr v7, v3

    iput v7, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :sswitch_2
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :sswitch_3
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v7, v11

    iput v7, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    shr-int/2addr v9, v3

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :sswitch_4
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v7, v11

    shr-int/2addr v7, v3

    iput v7, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    shr-int/2addr v9, v3

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :sswitch_5
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    shr-int/2addr v9, v3

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :sswitch_6
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v7, v10

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    :sswitch_7
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v7, v10

    shr-int/2addr v7, v3

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_2
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getOffsetPair()Lkotlin/Pair;

    move-result-object v10

    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    add-int/2addr v10, v9

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getOffsetPair()Lkotlin/Pair;

    move-result-object v10

    invoke-virtual {v10}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    add-int/2addr v10, v9

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getImmersionStatusBar()Z

    move-result v7

    sget-object v9, Lcom/lzf/easyfloat/enums/ShowPattern;->CURRENT_ACTIVITY:Lcom/lzf/easyfloat/enums/ShowPattern;

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getShowPattern()Lcom/lzf/easyfloat/enums/ShowPattern;

    move-result-object v7

    if-eq v7, v9, :cond_5

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v9, v8

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getShowPattern()Lcom/lzf/easyfloat/enums/ShowPattern;

    move-result-object v7

    if-ne v7, v9, :cond_5

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v9, v8

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_5
    :goto_3
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_4
    iget-object v5, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    const/4 v7, -0x1

    if-nez v5, :cond_7

    move v5, v7

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    :goto_5
    iput v5, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureWidth:I

    iget-object v5, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-nez v5, :cond_8

    move v5, v7

    goto :goto_6

    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    :goto_6
    iput v5, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureHeight:I

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getFilterSelf$easyfloat_release()Z

    move-result v5

    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    if-nez v5, :cond_e

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getShowPattern()Lcom/lzf/easyfloat/enums/ShowPattern;

    move-result-object v5

    sget-object v9, Lcom/lzf/easyfloat/enums/ShowPattern;->BACKGROUND:Lcom/lzf/easyfloat/enums/ShowPattern;

    if-ne v5, v9, :cond_9

    sget-object v5, Lcom/lzf/easyfloat/utils/LifecycleUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/LifecycleUtils;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/lzf/easyfloat/utils/LifecycleUtils;->activityCount:I

    if-lez v5, :cond_9

    goto/16 :goto_9

    :cond_9
    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getShowPattern()Lcom/lzf/easyfloat/enums/ShowPattern;

    move-result-object v5

    sget-object v9, Lcom/lzf/easyfloat/enums/ShowPattern;->FOREGROUND:Lcom/lzf/easyfloat/enums/ShowPattern;

    if-ne v5, v9, :cond_a

    sget-object v5, Lcom/lzf/easyfloat/utils/LifecycleUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/LifecycleUtils;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/lzf/easyfloat/utils/LifecycleUtils;->activityCount:I

    if-lez v5, :cond_e

    :cond_a
    const-string v5, "floatingView"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-eqz v5, :cond_10

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->isAnim()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_a

    :cond_b
    iget-object v5, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatAnimator()Lcom/lzf/easyfloat/interfaces/OnFloatAnimator;

    move-result-object v11

    if-nez v11, :cond_c

    const/4 v5, 0x0

    goto :goto_7

    :cond_c
    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getSidePattern()Lcom/lzf/easyfloat/enums/SidePattern;

    move-result-object v11

    const-string v12, "sidePattern"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v9, v10, v11, v2}, Lcom/lzf/easyfloat/anim/DefaultAnimator;->getAnimator(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lcom/lzf/easyfloat/enums/SidePattern;Z)Landroid/animation/ValueAnimator;

    move-result-object v5

    :goto_7
    if-nez v5, :cond_d

    const/4 v5, 0x0

    goto :goto_8

    :cond_d
    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    const/16 v10, 0x228

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v9, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;

    invoke-direct {v9, v4, v3, v0}, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    invoke-virtual {v5, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_8
    iput-object v5, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->enterAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_10

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    iget-object v9, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-virtual {v4}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v5, v9, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_e
    :goto_9
    const/16 v5, 0x8

    invoke-virtual {v4, v5, v3}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->setVisible(IZ)V

    iget-object v5, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v5}, Lcom/lzf/easyfloat/data/FloatConfig;->getHasEditText()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, v4, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-nez v5, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v4, v5}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->traverseViewGroup(Landroid/view/ViewGroup;)V

    :cond_10
    :goto_a
    invoke-virtual {v6, v0}, Lcom/lzf/easyfloat/data/FloatConfig;->setLayoutView(Landroid/view/View;)V

    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getInvokeView()Lcom/lzf/easyfloat/interfaces/OnInvokeView;

    move-result-object v4

    if-nez v4, :cond_11

    goto/16 :goto_f

    :cond_11
    check-cast v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;

    iget-object v4, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string v5, "this$0"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v5, 0x7f0b0355

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lme/wcy/lrcview/LrcView;

    iput-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lrcView:Lme/wcy/lrcview/LrcView;

    const v5, 0x7f0b0611

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    iput-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    new-instance v5, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    iget-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lrcView:Lme/wcy/lrcview/LrcView;

    iget-object v10, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    invoke-direct {v5, v9, v10}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;-><init>(Lme/wcy/lrcview/LrcView;Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;)V

    iput-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    const v5, 0x7f0b05e7

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->titleTv:Landroid/widget/TextView;

    const v5, 0x7f0b051e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->singerTv:Landroid/widget/TextView;

    const v5, 0x7f0b0501

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->separatorTv:Landroid/widget/TextView;

    const v5, 0x7f0b05e3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->titleContainer:Landroid/view/View;

    const v5, 0x7f0b0356

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricContainer:Landroid/view/View;

    iput-object v0, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->contentContainer:Landroid/view/View;

    iget-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->actionPopup:Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;

    iget-object v9, v5, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->closeBtn:Landroid/widget/ImageView;

    iput-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->closeBtn:Landroid/widget/ImageView;

    iget-object v9, v5, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->lockBtn:Landroid/widget/ImageView;

    iput-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockBtn:Landroid/widget/ImageView;

    iget-object v9, v5, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->fontIncreaseBtn:Landroid/widget/ImageView;

    iput-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->fontIncreaseBtn:Landroid/widget/ImageView;

    iget-object v9, v5, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->fontDecreaseBtn:Landroid/widget/ImageView;

    iput-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->fontDecreaseBtn:Landroid/widget/ImageView;

    iget-object v9, v5, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->opacityBtn:Landroid/widget/ImageView;

    iput-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->opacityBtn:Landroid/widget/ImageView;

    iget-object v9, v5, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->colorBtn:Landroid/widget/ImageView;

    iput-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->colorBtn:Landroid/widget/ImageView;

    iget-object v9, v5, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->lyricAlignBtn:Landroid/widget/ImageView;

    iput-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricAlignBtn:Landroid/widget/ImageView;

    iget-object v5, v5, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->pinBtn:Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pinBtn:Landroid/widget/ImageView;

    const v5, 0x7f0b00bd

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Leightbitlab/com/blurview/BlurView;

    iput-object v5, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->blurView:Leightbitlab/com/blurview/BlurView;

    const v5, 0x7f0b04ae

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resizeHandle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700a3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    new-instance v10, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$1;

    invoke-direct {v10, v3, v9}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$1;-><init>(IF)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v9, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda10;

    invoke-direct {v9, v4, v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda10;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->blurView:Leightbitlab/com/blurview/BlurView;

    iget-object v15, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Landroid/view/ViewGroup;

    if-eqz v11, :cond_12

    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_b

    :cond_12
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_14

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070054

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1f

    if-lt v12, v13, :cond_13

    new-instance v12, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v12}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    goto :goto_c

    :cond_13
    new-instance v12, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-direct {v12, v15}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    :goto_c
    invoke-virtual {v9, v10, v12}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object v9

    iput v11, v9, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-virtual {v9, v3}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurController;

    :cond_14
    iget-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->closeBtn:Landroid/widget/ImageView;

    if-eqz v9, :cond_15

    new-instance v10, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/4 v11, 0x3

    invoke-direct {v10, v11, v4, v0}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    iget-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockBtn:Landroid/widget/ImageView;

    if-eqz v9, :cond_16

    new-instance v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;

    invoke-direct {v10, v4, v2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    iget-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricAlignBtn:Landroid/widget/ImageView;

    if-eqz v9, :cond_17

    new-instance v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;

    invoke-direct {v10, v4, v3}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    iget-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pinBtn:Landroid/widget/ImageView;

    if-eqz v9, :cond_18

    new-instance v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;

    invoke-direct {v10, v4, v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    iget-object v1, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_1a

    iget-boolean v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-eqz v9, :cond_19

    const v9, 0x7f08013c

    goto :goto_d

    :cond_19
    const v9, 0x7f08013d

    :goto_d
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1a
    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updatePinIcon()V

    iget-object v1, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v1, :cond_1b

    iget-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lineRenderInfoListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v9}, Lme/wcy/lrcview/LrcView;->setOnLineRenderInfoListener(Lme/wcy/lrcview/LrcView$OnLineRenderInfoListener;)V

    :cond_1b
    iget-object v1, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v1, :cond_1c

    iget-object v9, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->ttmlLineRenderInfoListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v9}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setOnLineRenderInfoListener(Lcom/deepalhome/launcher/music/ttml/OnTtmlLineRenderInfoListener;)V

    :cond_1c
    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateLyricAnchorLine()V

    iget-object v1, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->fontIncreaseBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_1d

    new-instance v9, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3, v3, v4}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1d
    iget-object v1, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->fontDecreaseBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_1e

    new-instance v9, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v7, v3, v4}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1e
    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0c0066

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0c0065

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c0064

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v13, v7

    iget-object v7, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->opacityBtn:Landroid/widget/ImageView;

    if-eqz v7, :cond_1f

    new-instance v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;

    move-object v9, v10

    move-object v8, v10

    move-object v10, v4

    move-object/from16 v16, v15

    move v15, v1

    invoke-direct/range {v9 .. v15}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda22;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$IntRef;FII)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_e

    :cond_1f
    move-object/from16 v16, v15

    :goto_e
    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v12, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v15, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v1, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->colorBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_20

    new-instance v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;

    move-object v9, v7

    move-object v10, v4

    invoke-direct/range {v9 .. v15}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_20
    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyLyricSize()V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyLyricBlur()V

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsTextGravity()I

    move-result v1

    iput v1, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricTextGravity:I

    iget-object v7, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v7, :cond_21

    invoke-virtual {v7, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setTextGravity(I)V

    :cond_21
    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateLyricAlignIcon()V

    iget-object v1, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->forceNotifyLineHeight()V

    :cond_22
    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateTitleVisibility()V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyTheme()V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyOpacity()V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyLyricColor()V

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v7, v4, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    invoke-virtual {v7, v1}, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;->onInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    :cond_23
    new-instance v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, v4, v3}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v7, "findViewById(...)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v14, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v15, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v10, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v8, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;

    move-object v9, v8

    move-object v13, v4

    invoke-direct/range {v9 .. v15}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/music/FloatingLyricsWindow;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v13, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v14, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0700b4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMinWindowHeight()I

    move-result v15

    new-instance v5, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;

    move-object v9, v5

    move-object v10, v4

    invoke-direct/range {v9 .. v16}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;II)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_f
    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_10

    :cond_24
    check-cast v1, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    if-nez v0, :cond_25

    goto :goto_10

    :cond_25
    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    iget-object v1, v1, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget v4, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    iget v5, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iget v7, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    iget v8, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v7, v8}, Lcom/lzf/easyfloat/EasyFloat$Companion;->updateFloat(IIII)V

    iget-boolean v0, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->listenersRegistered:Z

    if-nez v0, :cond_26

    iput-boolean v3, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->listenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->addOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->musicSettingsChangedListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicSettingsManager;->addOnMusicSettingsChangedListener(Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->uiModeChangedListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$uiModeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;

    const-string v3, "listener"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    iget-boolean v0, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-eqz v0, :cond_27

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->setWindowTouchable(Z)V

    iget-object v0, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v0, :cond_27

    iget-object v1, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->showLockOverlayRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_27
    :goto_10
    invoke-virtual {v6}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_11

    :cond_28
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    const/4 v0, 0x0

    throw v0

    :cond_29
    :goto_11
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x5 -> :sswitch_6
        0x10 -> :sswitch_5
        0x11 -> :sswitch_4
        0x13 -> :sswitch_5
        0x15 -> :sswitch_3
        0x31 -> :sswitch_7
        0x35 -> :sswitch_6
        0x50 -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_2
        0x55 -> :sswitch_0
        0x800005 -> :sswitch_6
        0x800013 -> :sswitch_5
        0x800015 -> :sswitch_3
        0x800035 -> :sswitch_6
        0x800053 -> :sswitch_2
        0x800055 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->touchListener:Lcom/lzf/easyfloat/interfaces/OnFloatTouchListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/ah;->onTouch(Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->isDrag()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final setLayoutListener(Lcom/lzf/easyfloat/widget/ParentFrameLayout$OnLayoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->layoutListener:Lcom/lzf/easyfloat/widget/ParentFrameLayout$OnLayoutListener;

    return-void
.end method

.method public final setTouchListener(Lcom/lzf/easyfloat/interfaces/OnFloatTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->touchListener:Lcom/lzf/easyfloat/interfaces/OnFloatTouchListener;

    return-void
.end method
