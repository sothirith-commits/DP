.class public final synthetic Lcom/lzf/easyfloat/core/FloatingWindowHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/lzf/easyfloat/core/FloatingWindowHelper;

.field public final synthetic f$1:Lcom/lzf/easyfloat/widget/ParentFrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/lzf/easyfloat/core/FloatingWindowHelper;Lcom/lzf/easyfloat/widget/ParentFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper$$ExternalSyntheticLambda2;->f$0:Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    iput-object p2, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper$$ExternalSyntheticLambda2;->f$1:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper$$ExternalSyntheticLambda2;->f$0:Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$this_apply"

    iget-object p0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper$$ExternalSyntheticLambda2;->f$1:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    iget v5, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureHeight:I

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v0, v5, :cond_2

    iget v0, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v0, v5, :cond_2

    move v2, v3

    :cond_2
    if-nez v4, :cond_c

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v0, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutChangedGravity()I

    move-result v2

    const v4, 0x800003

    and-int/2addr v2, v4

    const/16 v5, 0x11

    if-ne v2, v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutChangedGravity()I

    move-result v2

    const v4, 0x800005

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutChangedGravity()I

    move-result v2

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutChangedGravity()I

    move-result v2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_7

    :cond_6
    iget v2, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutChangedGravity()I

    move-result v2

    const/16 v3, 0x30

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutChangedGravity()I

    move-result v2

    const/16 v3, 0x50

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v2, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureHeight:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutChangedGravity()I

    move-result v2

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_a

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutChangedGravity()I

    move-result v0

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_b

    :cond_a
    iget v0, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureHeight:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_b
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iput p0, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->lastLayoutMeasureHeight:I

    invoke-virtual {v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    iget-object v0, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-virtual {v1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    :goto_4
    return-void
.end method
