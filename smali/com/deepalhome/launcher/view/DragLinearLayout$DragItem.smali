.class public final Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public detecting:Z

.field public dragging:Z

.field public final mOrientation:I

.field public position:I

.field public settleAnimation:Landroid/animation/ValueAnimator;

.field public startHead:I

.field public startVisibility:I

.field public targetHeadOffset:I

.field public thickness:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

.field public totalDragOffset:I

.field public view:Landroid/view/View;

.field public viewDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/view/DragLinearLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->mOrientation:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->stopDetecting()V

    return-void
.end method


# virtual methods
.method public final settling()Z
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startDetectingOnPossibleDrag(Landroid/view/View;I)V
    .locals 1

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startVisibility:I

    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->position:I

    iget p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->mOrientation:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startHead:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->thickness:I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startHead:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->thickness:I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->totalDragOffset:I

    iput p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->targetHeadOffset:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    return-void
.end method

.method public final stopDetecting()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->view:Landroid/view/View;

    const/4 v2, -0x1

    iput v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startVisibility:I

    iput-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->viewDrawable:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->position:I

    iput v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startHead:I

    iput v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->thickness:I

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->totalDragOffset:I

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->targetHeadOffset:I

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final updateTargetHead()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->view:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->mOrientation:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startHead:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->totalDragOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->targetHeadOffset:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->startHead:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->totalDragOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->targetHeadOffset:I

    :goto_0
    return-void
.end method
