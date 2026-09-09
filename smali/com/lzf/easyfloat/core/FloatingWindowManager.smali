.class public final Lcom/lzf/easyfloat/core/FloatingWindowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/lzf/easyfloat/core/FloatingWindowManager;

.field public static final windowMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lzf/easyfloat/core/FloatingWindowManager;

    invoke-direct {v0}, Lcom/lzf/easyfloat/core/FloatingWindowManager;-><init>()V

    sput-object v0, Lcom/lzf/easyfloat/core/FloatingWindowManager;->INSTANCE:Lcom/lzf/easyfloat/core/FloatingWindowManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lzf/easyfloat/core/FloatingWindowManager;->windowMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 6

    invoke-static {p0}, Lcom/lzf/easyfloat/core/FloatingWindowManager;->getHelper(Ljava/lang/String;)Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->remove(Z)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {p1}, Lcom/lzf/easyfloat/data/FloatConfig;->isAnim()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->enterAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->enterAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :goto_0
    iget-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatAnimator()Lcom/lzf/easyfloat/interfaces/OnFloatAnimator;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/lzf/easyfloat/data/FloatConfig;->getSidePattern()Lcom/lzf/easyfloat/enums/SidePattern;

    move-result-object v0

    const-string v4, "sidePattern"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v2, v3, v0, v5}, Lcom/lzf/easyfloat/anim/DefaultAnimator;->getAnimator(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lcom/lzf/easyfloat/enums/SidePattern;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->remove(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/lzf/easyfloat/data/FloatConfig;->isAnim()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v5}, Lcom/lzf/easyfloat/data/FloatConfig;->setAnim(Z)V

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v1, 0x228

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance p1, Lcom/lzf/easyfloat/core/FloatingWindowHelper$exitAnim$1;

    invoke-direct {p1, p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper$exitAnim$1;-><init>(Lcom/lzf/easyfloat/core/FloatingWindowHelper;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_7
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object v0
.end method

.method public static getHelper(Ljava/lang/String;)Lcom/lzf/easyfloat/core/FloatingWindowHelper;
    .locals 1

    sget-object v0, Lcom/lzf/easyfloat/core/FloatingWindowManager;->windowMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p0, :cond_0

    const-string p0, "default"

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    return-object p0
.end method
