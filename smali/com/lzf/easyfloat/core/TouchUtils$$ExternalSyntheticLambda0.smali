.class public final synthetic Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic f$2:Landroid/view/WindowManager;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(ZLandroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lcom/lzf/easyfloat/widget/ParentFrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;->f$1:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;->f$2:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    iput-object p5, p0, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;->f$4:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "$params"

    iget-object v1, p0, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;->f$1:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$windowManager"

    iget-object v2, p0, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;->f$2:Landroid/view/WindowManager;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$view"

    iget-object v3, p0, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;->f$0:Z

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/lzf/easyfloat/core/TouchUtils$$ExternalSyntheticLambda0;->f$4:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1
    return-void
.end method
