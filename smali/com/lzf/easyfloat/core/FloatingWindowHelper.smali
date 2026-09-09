.class public final Lcom/lzf/easyfloat/core/FloatingWindowHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final config:Lcom/lzf/easyfloat/data/FloatConfig;

.field public final context:Landroid/content/Context;

.field public enterAnimator:Landroid/animation/ValueAnimator;

.field public frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

.field public lastLayoutMeasureHeight:I

.field public lastLayoutMeasureWidth:I

.field public params:Landroid/view/WindowManager$LayoutParams;

.field public touchUtils:Lcom/lzf/easyfloat/core/TouchUtils;

.field public windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lzf/easyfloat/data/FloatConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    const/4 p1, -0x1

    iput p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureWidth:I

    iput p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureHeight:I

    return-void
.end method


# virtual methods
.method public final addView()V
    .locals 5

    new-instance v0, Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    iget-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    iget-object v2, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/lzf/easyfloat/widget/ParentFrameLayout;-><init>(Landroid/content/Context;Lcom/lzf/easyfloat/data/FloatConfig;)V

    iput-object v0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    iget-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v1}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    if-nez v0, :cond_2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v1}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/umeng/analytics/pro/ah;

    invoke-direct {v2, p0}, Lcom/umeng/analytics/pro/ah;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->setTouchListener(Lcom/lzf/easyfloat/interfaces/OnFloatTouchListener;)V

    :goto_1
    iget-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Landroidx/cardview/widget/CardView$1;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Landroidx/cardview/widget/CardView$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v2}, Lcom/lzf/easyfloat/widget/ParentFrameLayout;->setLayoutListener(Lcom/lzf/easyfloat/widget/ParentFrameLayout$OnLayoutListener;)V

    :goto_2
    iget-object v0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/lzf/easyfloat/core/FloatingWindowHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper$$ExternalSyntheticLambda2;-><init>(Lcom/lzf/easyfloat/core/FloatingWindowHelper;Lcom/lzf/easyfloat/widget/ParentFrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_3
    return-void
.end method

.method public final checkEditText(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lzf/easyfloat/utils/InputMethodUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/InputMethodUtils;

    check-cast p1, Landroid/widget/EditText;

    iget-object p0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {p0}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "editText"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public final createWindowInner()Z
    .locals 3

    iget-object v0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    :try_start_0
    new-instance v1, Lcom/lzf/easyfloat/core/TouchUtils;

    iget-object v2, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/lzf/easyfloat/core/TouchUtils;-><init>(Landroid/content/Context;Lcom/lzf/easyfloat/data/FloatConfig;)V

    iput-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->touchUtils:Lcom/lzf/easyfloat/core/TouchUtils;

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->initParams()V

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->addView()V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/lzf/easyfloat/data/FloatConfig;->setShow(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :goto_1
    return p0

    :cond_1
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->params:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "params"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getWindowManager()Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "windowManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final initParams()V
    .locals 6

    iget-object v0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->windowManager:Landroid/view/WindowManager;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v2, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getShowPattern()Lcom/lzf/easyfloat/enums/ShowPattern;

    move-result-object v3

    sget-object v4, Lcom/lzf/easyfloat/enums/ShowPattern;->CURRENT_ACTIVITY:Lcom/lzf/easyfloat/enums/ShowPattern;

    if-ne v3, v4, :cond_5

    const/16 v3, 0x3e8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    instance-of v3, v0, Landroid/app/Activity;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/lzf/easyfloat/utils/LifecycleUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/LifecycleUtils;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/lzf/easyfloat/utils/LifecycleUtils;->mTopActivity:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :cond_5
    const/16 v3, 0x7f6

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_2
    const/4 v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v3, 0x800033

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getImmersionStatusBar()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x228

    goto :goto_3

    :cond_6
    const/16 v3, 0x28

    :goto_3
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getWidthMatch()Z

    move-result v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_4

    :cond_7
    move v3, v4

    :goto_4
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getHeightMatch()Z

    move-result v3

    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getImmersionStatusBar()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getHeightMatch()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/lzf/easyfloat/utils/DisplayUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/DisplayUtils;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/lzf/easyfloat/utils/DisplayUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_9
    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getLocationPair()Lkotlin/Pair;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getLocationPair()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2}, Lcom/lzf/easyfloat/data/FloatConfig;->getLocationPair()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->params:Landroid/view/WindowManager$LayoutParams;

    return-void

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove(Z)V
    .locals 2

    iget-object v0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/lzf/easyfloat/data/FloatConfig;->setAnim(Z)V

    sget-object v1, Lcom/lzf/easyfloat/core/FloatingWindowManager;->INSTANCE:Lcom/lzf/easyfloat/core/FloatingWindowManager;

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/lzf/easyfloat/core/FloatingWindowManager;->windowMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const-string v0, "default"

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/lzf/easyfloat/utils/Logger;->INSTANCE:Lcom/lzf/easyfloat/utils/Logger;

    const-string v0, "Exception occurred while closing floating window: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/lzf/easyfloat/utils/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final setVisible(IZ)V
    .locals 6

    iget-object v0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v0, p2}, Lcom/lzf/easyfloat/data/FloatConfig;->setNeedShow$easyfloat_release(Z)V

    iget-object p2, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "view"

    if-nez p1, :cond_6

    invoke-virtual {v0, v1}, Lcom/lzf/easyfloat/data/FloatConfig;->setShow(Z)V

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    iget-object p0, p1, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iget-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->contentContainer:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0003

    invoke-virtual {v3, v4, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f0a0002

    invoke-virtual {p1, v5, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    invoke-direct {v4, p1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    iget-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->titleContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070095

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    new-instance v1, Lcom/petterp/floatingx/util/FxInputHelper$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v1, p1, v3}, Lcom/petterp/floatingx/util/FxInputHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    new-instance p1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;-><init>(Lme/wcy/lrcview/LrcView;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0c0010

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v3, p2

    invoke-virtual {p0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    throw v2

    :cond_6
    invoke-virtual {v0, p2}, Lcom/lzf/easyfloat/data/FloatConfig;->setShow(Z)V

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object p0

    if-nez p0, :cond_8

    :goto_2
    return-void

    :cond_8
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    throw v2

    :cond_9
    :goto_3
    return-void
.end method

.method public final traverseViewGroup(Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->traverseViewGroup(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_1
    const-string v3, "child"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->checkEditText(Landroid/view/View;)V

    :goto_1
    if-lt v2, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
