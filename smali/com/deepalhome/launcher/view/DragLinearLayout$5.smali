.class public final Lcom/deepalhome/launcher/view/DragLinearLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

.field public final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/view/DragLinearLayout;Landroid/view/ViewTreeObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$5;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    iput-object p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$5;->val$observer:Landroid/view/ViewTreeObserver;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$5;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$5;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-static {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->updateTargetHead()V

    invoke-static {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object v0

    iget-object v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-static {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object v0

    iget-object v0, v0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-static {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$2200(Lcom/deepalhome/launcher/view/DragLinearLayout;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
