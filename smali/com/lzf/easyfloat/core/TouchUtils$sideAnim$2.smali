.class public final Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 0

    iput p2, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->$r8$classId:I

    iput-object p1, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAnimationCancel$com$lzf$easyfloat$core$FloatingWindowHelper$enterAnim$1$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$lzf$easyfloat$core$FloatingWindowHelper$enterAnim$1$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$lzf$easyfloat$core$TouchUtils$sideAnim$2(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/lzf/easyfloat/core/TouchUtils;

    iget-object p1, p1, Lcom/lzf/easyfloat/core/TouchUtils;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lzf/easyfloat/data/FloatConfig;->setAnim(Z)V

    invoke-virtual {p1}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "view"

    iget-object p0, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->$view:Landroid/view/View;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    iget-object p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lzf/easyfloat/data/FloatConfig;->setAnim(Z)V

    iget-object p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {p1}, Lcom/lzf/easyfloat/data/FloatConfig;->getImmersionStatusBar()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x28

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    iget-object p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {p1}, Lcom/lzf/easyfloat/data/FloatConfig;->getHasEditText()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->traverseViewGroup(Landroid/view/ViewGroup;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/lzf/easyfloat/core/TouchUtils;

    iget-object p1, p1, Lcom/lzf/easyfloat/core/TouchUtils;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lzf/easyfloat/data/FloatConfig;->setAnim(Z)V

    invoke-virtual {p1}, Lcom/lzf/easyfloat/data/FloatConfig;->getCallbacks()Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "view"

    iget-object p0, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->$view:Landroid/view/View;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lcom/lzf/easyfloat/data/FloatConfig;->getFloatCallbacks()Lcom/lzf/easyfloat/interfaces/FloatCallbacks;

    move-result-object p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/lzf/easyfloat/interfaces/FloatCallbacks;->getBuilder()V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->$r8$classId:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    iget-object p0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/lzf/easyfloat/data/FloatConfig;->setAnim(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/lzf/easyfloat/core/TouchUtils$sideAnim$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/lzf/easyfloat/core/TouchUtils;

    iget-object p0, p0, Lcom/lzf/easyfloat/core/TouchUtils;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/lzf/easyfloat/data/FloatConfig;->setAnim(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
