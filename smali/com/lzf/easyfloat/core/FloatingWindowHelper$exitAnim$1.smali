.class public final Lcom/lzf/easyfloat/core/FloatingWindowHelper$exitAnim$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/lzf/easyfloat/core/FloatingWindowHelper;


# direct methods
.method public constructor <init>(Lcom/lzf/easyfloat/core/FloatingWindowHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper$exitAnim$1;->this$0:Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper$exitAnim$1;->this$0:Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    invoke-virtual {p0, p1}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->remove(Z)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
