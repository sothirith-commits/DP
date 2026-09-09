.class public final Lcom/luck/picture/lib/magical/MagicalView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;

.field public val$isAlpha:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->$r8$classId:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->val$isAlpha:Z

    iput-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->val$isAlpha:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->$r8$classId:I

    iput-object p3, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->this$0:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->val$isAlpha:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->val$isAlpha:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iput-boolean p1, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isAnimationStart:Z

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-boolean p0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->val$isAlpha:Z

    const/16 v1, 0x200

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p0, p0, 0x400

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p0, 0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, -0x401

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->this$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    iget-boolean p0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->val$isAlpha:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void

    :pswitch_1
    iget-boolean p1, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->val$isAlpha:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->val$isAlpha:Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/FastScroller;

    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_4

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void

    :pswitch_2
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/luck/picture/lib/magical/MagicalView;

    iput-boolean p1, v0, Lcom/luck/picture/lib/magical/MagicalView;->isAnimating:Z

    iget-boolean p0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->val$isAlpha:Z

    if-eqz p0, :cond_7

    iget-object p0, v0, Lcom/luck/picture/lib/magical/MagicalView;->onMagicalViewCallback:Lcom/luck/picture/lib/magical/OnMagicalViewCallback;

    if-eqz p0, :cond_7

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;

    if-eqz p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExitPictureSelector()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onBackCurrentFragment()V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    iget-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->this$0:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api16Impl;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/luck/picture/lib/magical/MagicalView$6;->val$isAlpha:Z

    const/4 p0, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
