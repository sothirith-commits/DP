.class public final Lcom/kyleduo/switchbutton/SwitchButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton$1;->$r8$classId:I

    iput-object p2, p0, Lcom/kyleduo/switchbutton/SwitchButton$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton$1;->this$0:Ljava/lang/Object;

    iget p0, p0, Lcom/kyleduo/switchbutton/SwitchButton$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p0, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/pro/ah;->moveSpinner(IZ)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, v1, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, p0, v0}, Landroid/view/View;->scrollTo(II)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    check-cast v1, Lcom/google/android/material/slider/BaseSlider;

    iget-object p1, v1, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    const v2, 0x3f99999a    # 1.2f

    iput v2, v0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotY:F

    iput p0, v0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleX:F

    iput p0, v0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleY:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e428f5c    # 0.19f

    invoke-static {v2, v3, v4, v3, p0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v2

    iput v2, v0, Lcom/google/android/material/tooltip/TooltipDrawable;->labelOpacity:F

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    :cond_1
    return-void

    :pswitch_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    return-void

    :pswitch_5
    check-cast v1, Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-static {v1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object p0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->totalDragOffset:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->updateTargetHead()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void

    :pswitch_6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    check-cast v1, Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-static {v1, p0}, Lcom/kyleduo/switchbutton/SwitchButton;->access$000(Lcom/kyleduo/switchbutton/SwitchButton;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
