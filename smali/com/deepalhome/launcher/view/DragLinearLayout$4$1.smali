.class public final Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public counted:Z

.field public finished:Z

.field public final synthetic this$1:Ljava/lang/Object;

.field public final synthetic val$switchAnimator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/view/DragLinearLayout$4;Landroid/animation/ObjectAnimator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->val$switchAnimator:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->counted:Z

    iput-boolean p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->finished:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLandroidx/cardview/widget/CardView$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->this$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->finished:Z

    iput-object p3, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->val$switchAnimator:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->finished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->finished:Z

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->counted:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/view/DragLinearLayout$4;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-static {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$2000(Lcom/deepalhome/launcher/view/DragLinearLayout;)V

    :cond_1
    iget-object v0, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-static {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1800(Lcom/deepalhome/launcher/view/DragLinearLayout;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->val$originalPosition:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;->swapAnimation:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->val$switchAnimator:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ObjectAnimator;

    if-ne v1, p0, :cond_2

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;->swapAnimation:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->counted:Z

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iput p1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    iget-boolean p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->counted:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->finished:Z

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->val$switchAnimator:Ljava/lang/Object;

    check-cast p0, Landroidx/cardview/widget/CardView$1;

    if-eqz p0, :cond_1

    iget-object p1, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;->onHidden(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->finished:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    iput-boolean v3, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->counted:Z

    return-void

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->counted:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->this$1:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/view/DragLinearLayout$4;

    iget-object v0, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-static {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1700(Lcom/deepalhome/launcher/view/DragLinearLayout;)V

    iget-object v0, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-static {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1800(Lcom/deepalhome/launcher/view/DragLinearLayout;)Landroid/util/SparseArray;

    move-result-object v0

    iget p1, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->val$originalPosition:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;->val$switchAnimator:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ObjectAnimator;

    iput-object p0, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DraggableChild;->swapAnimation:Landroid/animation/ValueAnimator;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
